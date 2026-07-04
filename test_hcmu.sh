#!/bin/bash
# 可逆验证 EC[0x3a] bit0 (HCMU) 是否为功放硬静音开关
set -u
if [ "$(id -u)" -ne 0 ]; then echo "需要 root" >&2; exit 1; fi

rmmod ec_sys 2>/dev/null
modprobe ec_sys write_support=1
IO=/sys/kernel/debug/ec/ec0/io

rd() { dd if=$IO bs=1 skip=$((0x3a)) count=1 2>/dev/null | od -An -tx1 | tr -d ' '; }
wr() { printf "$(printf '\\x%02x' $1)" | dd of=$IO bs=1 seek=$((0x3a)) count=1 conv=notrunc 2>/dev/null; }

cur=0x$(rd)
echo "当前 EC[0x3a] = $cur"

echo ">>> 置位 HCMU (bit0=1) ... 请听: 声音断了吗?"
wr $((cur | 1))
sleep 5
echo "现在 EC[0x3a] = 0x$(rd)"

echo ">>> 清零 HCMU (bit0=0) ... 请听: 声音回来了吗?"
wr $((cur & ~1))
sleep 3
echo "现在 EC[0x3a] = 0x$(rd)"

# 恢复只读模式
rmmod ec_sys
modprobe ec_sys
echo "完成 (ec_sys 已恢复只读)"
