# thinkpad-x14g1-speaker-fix

Workaround for **no sound from the built-in speakers on the Lenovo ThinkPad X14 Gen 1** (Intel Panther Lake) under Linux.

## Symptom

- Built-in speakers are silent after a normal cold boot.
- Headphone jack and external/USB audio work fine.
- The Realtek **ALC257** codec is detected correctly (`snd_hda_intel`), pins are parsed, ALSA mixer shows everything unmuted — yet no sound.
- Curious clue: pressing **Fn+F1 (mute) at the GRUB screen** (before the OS loads) makes the speakers work for the rest of that session.

Tested on BIOS `R39ET27W (1.09)`, kernel 7.0.0 (Ubuntu 26.04).

## Root cause

The speaker amplifier has a **hard-mute enable bit owned by the Embedded Controller (EC): `EC[0x3b] bit0`.**

- On a cold boot the EC comes up with this bit **set (muted)**.
- The firmware only clears it on **resume-from-sleep** (ACPI `OWAK` path) or when the mute key is serviced by the EC during **POST** — which is exactly why the "press Fn+F1 at GRUB" trick works.
- On a normal boot into Linux, nothing ever clears it. (Windows' OEM audio driver handles this during init; the Linux `snd-hda-codec` generic path has no per-model quirk for this machine.)

The bit is an **anonymous/reserved field** in the DSDT EC region — the firmware's own ACPI code never touches it on the cold-boot path, so it can't be reached through any standard ACPI method. It sits right next to `HCMU` (`EC[0x3a] bit0`, the sleep anti-pop flag).

This was found by **differential diagnosis**: capturing every codec register + the full EC RAM in both the "silent" and "working" states, diffing them, and confirming each candidate bit with reversible live writes while a test tone played. `EC[0x3b] bit0` was the only bit that muted/unmuted the amp in real time.

## Fix

A tiny systemd oneshot service that clears `EC[0x3b] bit0` on boot and after every resume. Idempotent — it does nothing if the bit is already clear.

```bash
sudo ./install/install.sh
```

Then reboot normally (no GRUB trick) — the speakers should just work.

## What's in here

| Path | Purpose |
|------|---------|
| `install/x14-speaker-unmute.sh` | Clears `EC[0x3b] bit0` via the `ec_sys` debugfs interface, then restores read-only mode |
| `install/x14-speaker-unmute.service` | systemd oneshot, wired to boot + suspend/hibernate targets |
| `install/install.sh` | Installs, enables and starts the service |
| `diag/` | The diagnostic data + scripts used to find the bit (state snapshots, EC/COEF dumps, DSDT) |

## ⚠️ Caveats

- This pokes the EC directly through `ec_sys write_support=1`. Writing arbitrary EC bytes can be risky; this script touches **only** `EC[0x3b] bit0` and nothing else. Use at your own risk.
- This is a **workaround**, not the proper fix. The right home is a DMI-gated quirk in the kernel's `thinkpad_acpi` driver using `ec_read`/`ec_write`. See `UPSTREAM.md`.
- Offsets are specific to the X14 Gen 1 / this BIOS family. Do **not** blindly apply to other models.

## License

Public domain / CC0 — do whatever you want.
