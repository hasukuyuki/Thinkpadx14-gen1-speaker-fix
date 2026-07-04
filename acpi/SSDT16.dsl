/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT16.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000080 (128)
 *     Revision         0x02
 *     Checksum         0x9C
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TseSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "TseSsdt", 0x00001000)
{
    External (_SB_.PC00, DeviceObj)
    External (PCHS, IntObj)
    External (TSEE, UnknownObj)

    Scope (\_SB.PC00)
    {
        Device (TSE)
        {
            Name (_HID, "INTC10DF")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSEE == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

