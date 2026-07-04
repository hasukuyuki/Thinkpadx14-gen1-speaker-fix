# ThinkPad X14 Gen 1 speaker fix

Fix/workaround for silent built-in speakers on the Lenovo ThinkPad X14 Gen 1 under Linux.

## Problem

After a normal cold boot, the built-in speakers are silent even though:

- the Realtek ALC257 codec is detected;
- ALSA/PipeWire show the speakers as available and unmuted;
- headphones, Bluetooth and USB audio work normally.

The cause is an Embedded Controller speaker amplifier hard-mute bit:

```text
EC[0x3b] bit0
```

On this machine/firmware, that bit can stay set after cold boot, so Linux thinks the
audio path is enabled while the speaker amplifier is still hard-muted.

## Solution

Install the included systemd oneshot service:

```bash
sudo ./install/install.sh
```

It clears `EC[0x3b] bit0` at boot and after resume. Reboot normally after installing;
the built-in speakers should work without pressing Fn+F1 at GRUB.

## Notes

- Tested on ThinkPad X14 Gen 1, BIOS `R39ET27W (1.09)`.
- This writes one EC bit through `ec_sys`; do not use it blindly on other models.
- Diagnostic notes and upstream kernel-fix notes are in `WRITEUP.md` and `UPSTREAM.md`.
