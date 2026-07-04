#!/bin/bash
# 捕获 ALC257 codec 寄存器 + EC RAM 快照,用于"有声/无声"两种开机状态的差分对比
# 用法: sudo bash capture_state.sh <label>   (label 如 bad / good)
set -u

LABEL="${1:?用法: sudo bash capture_state.sh <label>}"
BASE="$(cd "$(dirname "$0")" && pwd)"
OUT="$BASE/state_$LABEL"
HW=/dev/snd/hwC0D0

if [ "$(id -u)" -ne 0 ]; then
    echo "需要 root 权限" >&2
    exit 1
fi

mkdir -p "$OUT"
echo "输出目录: $OUT"

# ---------- 1. codec proc dump ----------
cat /proc/asound/card0/codec#0 > "$OUT/codec0-proc.txt"

# ---------- 2. GPIO 状态 (AFG 节点 0x01) ----------
{
    echo "# GPIO (node 0x01)"
    for v in \
        "GET_GPIO_DATA 0xf15" \
        "GET_GPIO_MASK 0xf16" \
        "GET_GPIO_DIRECTION 0xf17" \
        "GET_GPIO_WAKE_MASK 0xf18" \
        "GET_GPIO_UNSOL_RSP 0xf19" \
        "GET_GPIO_STICKY_MASK 0xf1a"; do
        name="${v% *}"; verb="${v#* }"
        val=$(hda-verb "$HW" 0x01 "$verb" 0 2>/dev/null | awk '/value =/{print $NF}')
        printf "%-24s = %s\n" "$name" "${val:-ERR}"
    done
} > "$OUT/gpio.txt"

# ---------- 3. 引脚状态 (0x14 扬声器, 0x21 耳机, 0x12/0x19 麦克风) ----------
{
    for nid in 0x14 0x21 0x12 0x19; do
        echo "# node $nid"
        for v in \
            "GET_PIN_WIDGET_CONTROL 0xf07" \
            "GET_EAPD_BTLENABLE 0xf0c" \
            "GET_POWER_STATE 0xf05"; do
            name="${v% *}"; verb="${v#* }"
            val=$(hda-verb "$HW" "$nid" "$verb" 0 2>/dev/null | awk '/value =/{print $NF}')
            printf "  %-24s = %s\n" "$name" "${val:-ERR}"
        done
        # 输出功放增益/静音: 左(0xa000) 右(0x8000)
        l=$(hda-verb "$HW" "$nid" 0xb00 0xa000 2>/dev/null | awk '/value =/{print $NF}')
        r=$(hda-verb "$HW" "$nid" 0xb00 0x8000 2>/dev/null | awk '/value =/{print $NF}')
        printf "  %-24s = L:%s R:%s\n" "GET_AMP_OUT" "${l:-ERR}" "${r:-ERR}"
    done
} > "$OUT/pins.txt"

# ---------- 4. COEF 寄存器全量 dump (节点 0x20, index 0x00-0x7f) ----------
{
    echo "# COEF dump (node 0x20)"
    for i in $(seq 0 127); do
        idx=$(printf "0x%02x" "$i")
        hda-verb "$HW" 0x20 0x500 "$idx" >/dev/null 2>&1   # SET_COEF_INDEX
        val=$(hda-verb "$HW" 0x20 0xc00 0 2>/dev/null | awk '/value =/{print $NF}')  # GET_PROC_COEF
        printf "coef %s = %s\n" "$idx" "${val:-ERR}"
    done
} > "$OUT/coef.txt"

# ---------- 5. EC RAM dump (只读) ----------
modprobe ec_sys 2>/dev/null
if [ -r /sys/kernel/debug/ec/ec0/io ]; then
    dd if=/sys/kernel/debug/ec/ec0/io of="$OUT/ec_ram.bin" bs=1 count=256 2>/dev/null
    xxd "$OUT/ec_ram.bin" > "$OUT/ec_ram.hex"
else
    echo "ec_sys 不可用,跳过 EC dump" | tee "$OUT/ec_ram.hex"
fi

# ---------- 6. alsa-info 完整报告 ----------
alsa-info --no-upload --output "$OUT/alsa-info.txt" >/dev/null 2>&1

if [ -n "${SUDO_USER:-}" ] && [ "$SUDO_USER" != root ]; then
    chown -R "$SUDO_USER:${SUDO_USER}" "$OUT" 2>/dev/null || true
fi
echo "完成。已保存:"
ls -la "$OUT"
