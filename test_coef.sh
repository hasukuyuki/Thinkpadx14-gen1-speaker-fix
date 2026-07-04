#!/bin/bash
# 逐个切换差异 COEF 位,验证哪个是功放开关(全程可逆,重启也会复原)
# 前提: 内置扬声器正在循环播放测试音
set -u
HW=/dev/snd/hwC0D0

if [ "$(id -u)" -ne 0 ]; then echo "需要 root" >&2; exit 1; fi

w() { # w <coef_idx> <value>
    hda-verb "$HW" 0x20 0x500 "$1" >/dev/null   # SET_COEF_INDEX
    hda-verb "$HW" 0x20 0x400 "$2" >/dev/null   # SET_PROC_COEF
}
r() { # r <coef_idx>
    hda-verb "$HW" 0x20 0x500 "$1" >/dev/null
    hda-verb "$HW" 0x20 0xc00 0 2>/dev/null | awk '/value =/{print $NF}'
}

echo "=== 测试 1: COEF 0x35 (当前=$(r 0x35)) ==="
echo ">>> 写入坏值 0x0d6a ... 请听: 声音断了吗?"
w 0x35 0x0d6a
sleep 5
echo ">>> 写回好值 0x8d6a ... 请听: 声音回来了吗?"
w 0x35 0x8d6a
sleep 5

echo "=== 测试 2: COEF 0x46 (当前=$(r 0x46)) ==="
echo ">>> 写入坏值 0x0404 ... 请听: 声音断了吗?"
w 0x46 0x0404
sleep 5
echo ">>> 写回好值 0x0004 ... 请听: 声音回来了吗?"
w 0x46 0x0004
sleep 5

echo "=== 结束,最终状态: 0x35=$(r 0x35) 0x46=$(r 0x46) (都应是好值) ==="
