# Social post draft — "How I fixed silent ThinkPad speakers on Linux"

## Short version (X/Mastodon thread)

1/ My ThinkPad X14 Gen 1 had dead built-in speakers on Linux. Headphones fine, USB
audio fine, the ALC257 codec detected fine, mixer fully unmuted — but silence. Here's
how I tracked down the actual cause instead of guessing at ALSA quirks. 🧵

2/ The break-in clue: pressing **Fn+F1 (mute) at the GRUB screen** — before Linux even
loads — made sound work for the whole session. Nothing but the Embedded Controller (EC)
is running that early. So a *persistent hardware switch* existed that the EC could flip
and Linux never touched.

3/ Instead of guessing, I did **differential diagnosis**: dumped every codec register +
all 256 bytes of EC RAM in both the silent state and the working state, then diffed
them. A few hundred bytes → only ~12 differed. Suspect list went from "the whole
machine" to a dozen bits.

4/ Then: reversible live testing. With a test tone playing, write the "bad" value back,
listen — does it cut out? Write "good" — does it return? Sound is the oscilloscope.
Ruled out two codec COEF registers (they were just side-effects — the amp survived a
full power-cycle with the "bad" values). I even misread one byte and had to redo it.

5/ Winner: **EC register 0x3b, bit 0.** Set it → speakers cut instantly. Clear it →
back instantly. That's the amplifier hard-mute, owned entirely by the EC — invisible to
the audio codec.

6/ Why the weird boot behavior? I decompiled the firmware's ACPI tables (DSDT). The
resume-from-sleep path clears this bit; POST-time mute-key handling clears it (my GRUB
trick). But the **cold-boot-into-Linux path clears it for nobody.** Windows' OEM driver
handles it at init; mainline Linux has no per-model quirk for this laptop.

7/ Fix: a 3-line systemd oneshot that clears EC[0x3b] bit0 on boot + resume. Idempotent.
Speakers now work on a normal boot, no GRUB trick.

8/ Repo + full diagnostic data: <GITHUB_LINK>
Next: sending it upstream to the kernel's thinkpad_acpi maintainers so nobody else has
to do this. The real lesson isn't the bit — it's *stop guessing, capture two states,
diff, and confirm reversibly.*

## Notes for turning this into a blog post

- Lead with the mystery (detected codec, unmuted mixer, still silent) — it's relatable.
- The Fn+F1-at-GRUB clue is the emotional hook; explain *why* it implicated the EC.
- Include the actual `diff` of the two EC RAM dumps as a screenshot — very convincing.
- Show one reversible-write snippet so readers can reproduce the method on their own
  hardware quirks.
- End on the generalizable method + the upstream-contribution angle.
- Redact nothing sensitive here (no serials in EC dumps — but double-check before posting
  raw `alsa-info.txt`, it contains some hardware identifiers).
