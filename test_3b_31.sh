#!/bin/bash
# 可逆验证 EC[0x3b] bit0 和 EC[0x31] bit6 是否为功放实时开关
set -u
if [ "$(id -u)" -ne 0 ]; then echo "需要 root" >&2; exit 1; fi
rmmod ec_sys 2>/dev/null
modprobe ec_sys write_support=1
IO=/sys/kernel/debug/ec/ec0/io
rd() { dd if=$IO bs=1 skip=$(($1)) count=1 2>/dev/null | od -An -tx1 | tr -d ' '; }
wr() { printf "$(printf '\\x%02x' $2)" | dd of=$IO bs=1 seek=$(($1)) count=1 conv=notrunc 2>/dev/null; }

b3b=0x$(rd 0x3b); b31=0x$(rd 0x31)
echo "当前 EC[0x3b]=$b3b EC[0x31]=$b31"

echo ">>> 测试A: EC[0x3b] bit0 置 1 (坏状态值) ... 声音断了吗?"
wr 0x3b $((b3b | 1)); sleep 5
echo "    现在 EC[0x3b]=0x$(rd 0x3b)"
echo ">>> 恢复 EC[0x3b] bit0=0 ... 声音回来了吗?"
wr 0x3b $((b3b & ~1)); sleep 4

echo ">>> 测试B: EC[0x31] bit6 清 0 (坏状态值, VPON off) ... 声音断了吗?"
wr 0x31 $((b31 & ~0x40)); sleep 5
echo "    现在 EC[0x31]=0x$(rd 0x31)"
echo ">>> 恢复 EC[0x31] bit6=1 ... 声音回来了吗?"
wr 0x31 $((b31 | 0x40)); sleep 4

echo "最终: EC[0x3b]=0x$(rd 0x3b) EC[0x31]=0x$(rd 0x31) (应与开头一致)"
rmmod ec_sys; modprobe ec_sys
echo "完成 (ec_sys 已恢复只读)"
