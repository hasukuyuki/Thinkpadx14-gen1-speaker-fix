# Upstream report — who to contact & how

## Who

The natural home for this fix is the **`thinkpad_acpi`** driver (it already pokes the
ThinkPad EC for model-specific behavior). From the kernel `MAINTAINERS` file:

**THINKPAD ACPI EXTRAS DRIVER**
- Maintainer: **Henrique de Moraes Holschuh `<hmh@hmh.eng.br>`**
- List: **`ibm-acpi-devel@lists.sourceforge.net`**
- List: **`platform-driver-x86@vger.kernel.org`** (this is the active one; the
  platform-x86 maintainers — currently Hans de Goede & Ilpo Järvinen — review here)
- Driver file: `drivers/platform/x86/lenovo/thinkpad_acpi.c`

Do NOT hand-copy the address list — run the kernel's own tool against your patch so
you Cc exactly the right current people:

```bash
cd linux/            # a kernel tree
scripts/get_maintainer.pl 0001-your-patch.patch
```

Also worth a heads-up because it's an audio-enablement gap: the ALSA/HD-audio side
(`sound/hda/codecs/realtek/`, list `alsa-devel@alsa-project.org`) — but since the
bit is an **EC** control, not a codec register, `thinkpad_acpi` is the correct layer.

## How (the accepted workflow)

The kernel does **not** take fixes over social media or issue trackers as the primary
path — it's email patches to the list. Two options:

1. **Report first (easier):** email a plain-text bug report to
   `platform-driver-x86@vger.kernel.org` + Cc the maintainer, describing the finding
   and linking your GitHub repo. A maintainer may write the patch, or ask you to.

2. **Send a patch (higher impact):** the productionized version is small. Sketch:
   - Add a DMI match for `ThinkPad X14 Gen 1` (vendor `LENOVO`, use the
     `DMI_MATCH(DMI_PRODUCT_VERSION, "ThinkPad X14 Gen 1")` style already used
     throughout `thinkpad_acpi.c`).
   - On init **and** resume, `ec_read(0x3b, &v)` then `ec_write(0x3b, v & ~0x01)`.
     Use the in-kernel `ec_read`/`ec_write` helpers — **not** `ec_sys` (that debugfs
     module is a debugging aid, unacceptable in a shipped driver).
   - Gate it so it only runs on the matched model.
   - Commit message must explain the EC-owned mute bit and the cold-boot-vs-resume
     asymmetry (the Fn+F1-at-GRUB clue is great evidence to include).
   - Format with `git format-patch`, check with `scripts/checkpatch.pl`, send with
     `git send-email`.

## Key evidence to include in the report

- Machine: ThinkPad X14 Gen 1, BIOS `R39ET27W (1.09)`, codec Realtek ALC257, SSID `17aa:513d`.
- Symptom: silent internal speakers on cold boot; headphone + USB fine; mixer unmuted.
- The bit: `EC[0x3b] bit0` — set on cold boot (muted), cleared only on resume
  (DSDT `OWAK`) or POST-time mute-key servicing. Anonymous/reserved field in the
  DSDT EC OperationRegion; no ACPI method clears it on cold boot.
- Repro of the "workaround-that-shouldn't-work": pressing Fn+F1 at GRUB enables sound.
- Verification method: reversible live EC writes toggled the amp in real time; codec
  COEF registers (0x35/0x46) and `EC[0x31]` VPON were ruled out.
- Attach: `alsa-info.txt`, the bad/good EC RAM diff, DSDT excerpt of the EC region.
