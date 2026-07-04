/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT18.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C0 (192)
 *     Revision         0x02
 *     Checksum         0x98
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "PID0Ssdt"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "PID0Ssdt", 0x00000010)
{
    External (_SB_.PC00.LPCB.EC__, DeviceObj)

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (LHKF)
        {
            Name (_HID, EisaId ("LEN0130"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (LISD)
        {
            Name (_HID, EisaId ("LEN0110"))  // _HID: Hardware ID
            Name (HPDS, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }
}

