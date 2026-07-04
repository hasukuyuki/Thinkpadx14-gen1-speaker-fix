#!/bin/bash
# 观察按 Fn+F1 时 EC RAM 哪些字节变化 (只读,零风险)
set -u
if [ "$(id -u)" -ne 0 ]; then echo "需要 root" >&2; exit 1; fi
modprobe ec_sys 2>/dev/null
D="$(cd "$(dirname "$0")" && pwd)/ec_probe"
mkdir -p "$D"
dump() { dd if=/sys/kernel/debug/ec/ec0/io of="$D/$1.bin" bs=1 count=256 2>/dev/null; xxd "$D/$1.bin" > "$D/$1.hex"; }

# 先写回好值 COEF (顺便)
HW=/dev/snd/hwC0D0
hda-verb $HW 0x20 0x500 0x35 >/dev/null; hda-verb $HW 0x20 0x400 0x8d6a >/dev/null
hda-verb $HW 0x20 0x500 0x46 >/dev/null; hda-verb $HW 0x20 0x400 0x0004 >/dev/null
echo "COEF 已写回好值"

dump t0
read -p ">>> 请按一次 Fn+F1 (静音), 然后回车继续..."
dump t1
read -p ">>> 请再按一次 Fn+F1 (取消静音), 然后回车继续..."
dump t2

echo "=== t0 -> t1 (按下静音) ==="
diff <(xxd "$D/t0.bin") <(xxd "$D/t1.bin")
echo "=== t1 -> t2 (取消静音) ==="
diff <(xxd "$D/t1.bin") <(xxd "$D/t2.bin")
if [ -n "${SUDO_USER:-}" ] && [ "$SUDO_USER" != root ]; then
    chown -R "$SUDO_USER:${SUDO_USER}" "$D" 2>/dev/null || true
fi
