#!/bin/bash
set -u
if [ "$(id -u)" -ne 0 ]; then echo "需要 root" >&2; exit 1; fi
D="$(cd "$(dirname "$0")" && pwd)/acpi"
mkdir -p "$D"
cp /sys/firmware/acpi/tables/DSDT "$D/DSDT.aml"
for t in /sys/firmware/acpi/tables/SSDT*; do
    cp "$t" "$D/$(basename $t).aml"
done
if [ -n "${SUDO_USER:-}" ] && [ "$SUDO_USER" != root ]; then
    chown -R "$SUDO_USER:${SUDO_USER}" "$D" 2>/dev/null || true
fi
ls -la "$D"
