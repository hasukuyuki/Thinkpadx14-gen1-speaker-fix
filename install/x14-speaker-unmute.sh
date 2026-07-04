#!/bin/bash
# ThinkPad X14 Gen 1 固件缺陷绕过: 冷开机时 EC 带着"功放硬静音"位(EC[0x3b] bit0)启动,
# 只有从睡眠唤醒或 POST 阶段按静音键才会清除。此脚本在开机/唤醒后主动清零该位。
# Diagnostic notes: https://github.com/<owner>/thinkpad-x14g1-speaker-fix
IO=/sys/kernel/debug/ec/ec0/io

modprobe ec_sys write_support=1 || exit 1
b=$(dd if="$IO" bs=1 skip=59 count=1 2>/dev/null | od -An -tx1 | tr -d ' ')
if [ -n "$b" ] && [ $((0x$b & 1)) -eq 1 ]; then
    printf "$(printf '\\x%02x' $((0x$b & ~1)))" | \
        dd of="$IO" bs=1 seek=59 count=1 conv=notrunc 2>/dev/null
    logger -t x14-speaker-unmute "cleared EC[0x3b] bit0 (was 0x$b)"
else
    logger -t x14-speaker-unmute "EC[0x3b]=0x${b:-??}, bit0 already clear"
fi
# 恢复 ec_sys 只读模式
rmmod ec_sys 2>/dev/null
modprobe ec_sys 2>/dev/null
exit 0
