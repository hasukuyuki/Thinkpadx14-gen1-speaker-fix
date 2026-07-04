/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT27.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000D3D (3389)
 *     Revision         0x02
 *     Checksum         0x52
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SocGpe "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "SocGpe ", 0x00003000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.I3C0, UnknownObj)
    External (_SB_.PC00.I3C0.PMEN, FieldUnitObj)
    External (_SB_.PC00.I3C0.PSTE, FieldUnitObj)
    External (_SB_.PC00.I3C0.PSTS, FieldUnitObj)
    External (_SB_.PC00.I3C0.VDID, FieldUnitObj)
    External (_SB_.PC00.I3C2, UnknownObj)
    External (_SB_.PC00.I3C2.PMEN, FieldUnitObj)
    External (_SB_.PC00.I3C2.PSTE, FieldUnitObj)
    External (_SB_.PC00.I3C2.PSTS, FieldUnitObj)
    External (_SB_.PC00.I3C2.VDID, FieldUnitObj)
    External (_SB_.PC00.IMNG, MethodObj)    // 1 Arguments
    External (_SB_.PC00.MC__, DeviceObj)
    External (_SB_.PC00.MC__.D1F0, FieldUnitObj)
    External (_SB_.PC00.MC__.D1F1, FieldUnitObj)
    External (_SB_.PC00.MC__.D6F0, FieldUnitObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0, DeviceObj)
    External (_SB_.PC00.TRP0.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.LTRC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.PID3, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1, DeviceObj)
    External (_SB_.PC00.TRP1.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1.LTRC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1.PID3, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2, DeviceObj)
    External (_SB_.PC00.TRP2.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2.LTRC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2.PID3, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3, DeviceObj)
    External (_SB_.PC00.TRP3.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3.LTRC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3.PID3, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TXHC, DeviceObj)
    External (GP1E, IntObj)
    External (PCHH, IntObj)
    External (PCHS, FieldUnitObj)
    External (PGRT, FieldUnitObj)
    External (S210, FieldUnitObj)

    Debug = "[SocGpe SocGpe SSDT][AcpiTableEntry]"
    Debug = Timer
    Scope (\_GPE)
    {
        Method (SL61, 0, NotSerialized)
        {
        }

        Method (SL69, 0, NotSerialized)
        {
        }

        Method (SL71, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.IMNG))
            {
                \_SB.PC00.IMNG (0x71)
            }
        }

        Method (SL76, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((\_SB.PC00.TRP0.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP0, 0x02) // Device Wake
                }

                If ((\_SB.PC00.TRP1.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP1, 0x02) // Device Wake
                }

                If ((\_SB.PC00.TRP2.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP2, 0x02) // Device Wake
                }

                If ((\_SB.PC00.TRP3.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP3, 0x02) // Device Wake
                }
            }
        }

        Method (TPR3, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TRP0.PID3))
            {
                If ((\_SB.PC00.TRP0.PID3 () == One))
                {
                    Return (One)
                }
            }

            If (CondRefOf (\_SB.PC00.TRP1.PID3))
            {
                If ((\_SB.PC00.TRP1.PID3 () == One))
                {
                    Return (One)
                }
            }

            If (CondRefOf (\_SB.PC00.TRP2.PID3))
            {
                If ((\_SB.PC00.TRP2.PID3 () == One))
                {
                    Return (One)
                }
            }

            If (CondRefOf (\_SB.PC00.TRP3.PID3))
            {
                If ((\_SB.PC00.TRP3.PID3 () == One))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }

        Method (SL77, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((TPR3 () == One))
                {
                    Sleep (0x64)
                    \_SB.PC00.TRP0.HPEV ()
                    \_SB.PC00.TRP1.HPEV ()
                    \_SB.PC00.TRP2.HPEV ()
                    \_SB.PC00.TRP3.HPEV ()
                }

                \_SB.PC00.TRP0.LTRC ()
                \_SB.PC00.TRP1.LTRC ()
                \_SB.PC00.TRP2.LTRC ()
                \_SB.PC00.TRP3.LTRC ()
            }
        }

        Method (SL6F, 0, NotSerialized)
        {
            If ((PGRT == One)){}
        }

        Method (SL8E, 0, NotSerialized)
        {
            If ((\_SB.PC00.I3C0.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.I3C0.PSTS & One))
                {
                    If (CondRefOf (\_SB.PC00.I3C0))
                    {
                        Notify (\_SB.PC00.I3C0, 0x02) // Device Wake
                        Sleep (0x64)
                    }
                }
            }

            If ((\_SB.PC00.I3C2.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.I3C2.PSTS & One))
                {
                    If (CondRefOf (\_SB.PC00.I3C2))
                    {
                        Notify (\_SB.PC00.I3C2, 0x02) // Device Wake
                        Sleep (0x64)
                    }
                }
            }

            If ((0x4000 & S210))
            {
                S210 = 0x4000
            }
        }

        Method (SLA8, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC00.TRP0.PID3))
                {
                    If ((\_SB.PC00.TRP0.PID3 () == One))
                    {
                        Sleep (0x64)
                        \_SB.PC00.TRP0.HPEV ()
                    }
                }

                \_SB.PC00.TRP0.LTRC ()
            }
        }

        Method (SLA9, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC00.TRP1.PID3))
                {
                    If ((\_SB.PC00.TRP1.PID3 () == One))
                    {
                        Sleep (0x64)
                        \_SB.PC00.TRP1.HPEV ()
                    }
                }

                \_SB.PC00.TRP1.LTRC ()
            }
        }

        Method (SLAA, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC00.TRP2.PID3))
                {
                    If ((\_SB.PC00.TRP2.PID3 () == One))
                    {
                        Sleep (0x64)
                        \_SB.PC00.TRP2.HPEV ()
                    }
                }

                \_SB.PC00.TRP2.LTRC ()
            }
        }

        Method (SLAB, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC00.TRP3.PID3))
                {
                    If ((\_SB.PC00.TRP3.PID3 () == One))
                    {
                        Sleep (0x64)
                        \_SB.PC00.TRP3.HPEV ()
                    }
                }

                \_SB.PC00.TRP3.LTRC ()
            }
        }

        Method (SLC8, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((\_SB.PC00.TRP0.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP0, 0x02) // Device Wake
                }
            }
        }

        Method (SLC9, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((\_SB.PC00.TRP1.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP1, 0x02) // Device Wake
                }
            }
        }

        Method (SLCA, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((\_SB.PC00.TRP2.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP2, 0x02) // Device Wake
                }
            }
        }

        Method (SLCB, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If ((\_SB.PC00.TRP3.HPME () == One))
                {
                    Notify (\_SB.PC00.TRP3, 0x02) // Device Wake
                }
            }
        }

        Method (SLA0, 0, NotSerialized)
        {
            Sleep (0x64)
        }

        Method (SLA1, 0, NotSerialized)
        {
            Sleep (0x64)
        }

        Method (SLBC, 0, NotSerialized)
        {
            Sleep (0x64)
        }

        If ((PCHS == PCHH))
        {
            Method (SLB8, 0, NotSerialized)
            {
                Sleep (0x64)
            }

            Method (SLB9, 0, NotSerialized)
            {
                Sleep (0x64)
            }
        }

        Method (SLC0, 0, NotSerialized)
        {
            \_SB.PC00.RP01.HPME ()
            \_SB.PC00.RP02.HPME ()
            \_SB.PC00.RP03.HPME ()
            \_SB.PC00.RP04.HPME ()
        }

        Method (SLC1, 0, NotSerialized)
        {
            \_SB.PC00.RP05.HPME ()
            \_SB.PC00.RP06.HPME ()
            \_SB.PC00.RP07.HPME ()
            \_SB.PC00.RP08.HPME ()
        }

        Method (SLDC, 0, NotSerialized)
        {
            \_SB.PC00.RP09.HPME ()
            \_SB.PC00.RP10.HPME ()
        }

        If ((PCHS == PCHH))
        {
            Method (SLD8, 0, NotSerialized)
            {
                \_SB.PC00.RP11.HPME ()
            }

            Method (SLD9, 0, NotSerialized)
            {
                \_SB.PC00.RP12.HPME ()
            }
        }
    }

    Debug = "[SocGpe SocGpe SSDT][AcpiTableExit]"
    Debug = Timer
}

