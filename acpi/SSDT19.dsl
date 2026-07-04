/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT19.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018FE (6398)
 *     Revision         0x02
 *     Checksum         0x2F
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "PtlUHRvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "PtlUHRvp", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PRTP, IntObj)
    External (_SB_.PC00.RP01.RD3C, IntObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PRTP, IntObj)
    External (_SB_.PC00.RP02.RD3C, IntObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP03.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PDOD, UnknownObj)
    External (_SB_.PC00.RP03.PGRT, UnknownObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PRTP, IntObj)
    External (_SB_.PC00.RP03.PXSX, DeviceObj)
    External (_SB_.PC00.RP03.RD3C, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PRTP, IntObj)
    External (_SB_.PC00.RP04.RD3C, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PRTP, IntObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.RD3C, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PRTP, IntObj)
    External (_SB_.PC00.RP06.RD3C, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PRTP, IntObj)
    External (_SB_.PC00.RP07.RD3C, IntObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PRTP, IntObj)
    External (_SB_.PC00.RP08.RD3C, IntObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PRTP, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.RD3C, IntObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PRTP, IntObj)
    External (_SB_.PC00.RP10.RD3C, IntObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP11.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PDOD, UnknownObj)
    External (_SB_.PC00.RP11.PGRT, UnknownObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PRTP, IntObj)
    External (_SB_.PC00.RP11.RD3C, IntObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PRTP, IntObj)
    External (_SB_.PC00.RP12.RD3C, IntObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.DVID, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PC02, DeviceObj)
    External (_SB_.PC02.GBES, UnknownObj)
    External (_SB_.PC02.GLAN, DeviceObj)
    External (_SB_.PC02.RP01, DeviceObj)
    External (_SB_.PC02.RP01.PRTP, IntObj)
    External (_SB_.PC02.RP01.SLOT, IntObj)
    External (_SB_.PC02.RP01.VDID, UnknownObj)
    External (_SB_.PC02.RP05, DeviceObj)
    External (_SB_.PC02.RP05.PRTP, IntObj)
    External (_SB_.PC02.RP05.SLOT, IntObj)
    External (_SB_.PC02.RP05.VDID, UnknownObj)
    External (_SB_.PC02.RP08, DeviceObj)
    External (_SB_.PC02.RP08.PRTP, IntObj)
    External (_SB_.PC02.RP08.SLOT, IntObj)
    External (_SB_.PC02.RP09, DeviceObj)
    External (_SB_.PC02.RP09.PRTP, IntObj)
    External (_SB_.PC02.RP09.SLOT, IntObj)
    External (_SB_.PC02.RP09.VDID, UnknownObj)
    External (_SB_.PC02.RP13, DeviceObj)
    External (_SB_.PC02.RP13.PRTP, IntObj)
    External (_SB_.PC02.RP13.SLOT, IntObj)
    External (_SB_.PC02.RP13.VDID, UnknownObj)
    External (_SB_.PC02.RP21, DeviceObj)
    External (_SB_.PC02.RP21.PRTP, IntObj)
    External (_SB_.PC02.RP21.SLOT, IntObj)
    External (_SB_.PC02.RP21.VDID, UnknownObj)
    External (_SB_.PC02.SAT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT1, DeviceObj)
    External (_SB_.PC02.SAT0.PRT2, DeviceObj)
    External (_SB_.PC02.SAT0.PRT3, DeviceObj)
    External (_SB_.PC02.SAT0.PRT4, DeviceObj)
    External (_SB_.PC02.SAT0.PRT5, DeviceObj)
    External (_SB_.PC02.SAT0.PRT6, DeviceObj)
    External (_SB_.PC02.SAT0.PRT7, DeviceObj)
    External (_SB_.PC02.XDCI, DeviceObj)
    External (_SB_.PC02.XDCI.D0I3, UnknownObj)
    External (_SB_.PC02.XDCI.DVID, UnknownObj)
    External (_SB_.PC02.XDCI.XDCB, UnknownObj)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DTFS, IntObj)
    External (DTRC, IntObj)
    External (DTRD, IntObj)
    External (DTRO, IntObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (P1EP, UnknownObj)
    External (P1PG, UnknownObj)
    External (P1RG, UnknownObj)
    External (P1RN, UnknownObj)
    External (P1RP, UnknownObj)
    External (P2EP, UnknownObj)
    External (P2PG, UnknownObj)
    External (P2RG, UnknownObj)
    External (P2RN, UnknownObj)
    External (P2RP, UnknownObj)
    External (P3EP, UnknownObj)
    External (P3PG, UnknownObj)
    External (P3RG, UnknownObj)
    External (P3RN, UnknownObj)
    External (P3RP, UnknownObj)
    External (PBRS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PFCP, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PRST, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RW01, UnknownObj)
    External (RW02, UnknownObj)
    External (RW03, UnknownObj)
    External (RW04, UnknownObj)
    External (RW05, UnknownObj)
    External (RW09, UnknownObj)
    External (RW11, UnknownObj)
    External (RW12, UnknownObj)
    External (SCED, IntObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WBRS, UnknownObj)
    External (WCLK, UnknownObj)
    External (WFCP, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (WWRP, UnknownObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    Debug = "[PTL UH LP5 RVP1 RTD3 SSDT][AcpiTableEntry]"
    Debug = Timer
    If ((GBES != Zero)){}
    Name (SCLK, 0x02)
    Name (\_SB.PC00.RP02.WAKG, Zero)
    If ((P1RN == 0x03))
    {
        If (CondRefOf (\_SB.PC00.RP03))
        {
            Scope (\_SB.PC00.RP03)
            {
                Name (RSTG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                RSTG [Zero] = P1RG /* External reference */
                RSTG [One] = P1RP /* External reference */
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = P1PG /* External reference */
                PWRG [One] = P1EP /* External reference */
                Name (WAKG, Zero)
                WAKG = RW03 /* External reference */
                Name (SCLK, Zero)
                SCLK = 0x02
                Name (WAKP, Zero)
                Name (WKEN, Zero)
                Name (WOFF, Zero)
                Name (LNRD, Zero)
                Name (PWRR, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C == 0x02))
                        {
                            Return (0x04)
                        }
                    }

                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = One
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (PPS0, 0, Serialized)
                {
                }

                Method (PPS3, 0, Serialized)
                {
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((GPRS () == Zero))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If ((VDID == 0xFFFFFFFF)){}
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            PON ()
                            L23D ()
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If ((VDID == 0xFFFFFFFF)){}
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            DL23 ()
                            POFF ()
                        }
                    }
                }

                Method (GPPR, 0, NotSerialized)
                {
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP != Zero) && (WKEN == Zero)))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PWRR))
                    {
                        If ((PWRR != Zero))
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (GPRS, 0, NotSerialized)
                {
                    If (CondRefOf (PGRT))
                    {
                        If ((PGRT == Zero))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C != 0x02))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (PSTA, 0, NotSerialized)
                {
                    If (\PIN.STA (RSTG))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }

                Method (PON, 0, NotSerialized)
                {
                    If (CondRefOf (WAKG))
                    {
                        If ((WAKG != Zero))
                        {
                            \_SB.SHPO (WAKG, One)
                            \_SB.CAGS (WAKG)
                        }
                    }

                    If (CondRefOf (PWRG))
                    {
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < PDOD))
                                {
                                    Sleep ((PDOD - Local0))
                                }

                                WOFF = Zero
                            }
                        }

                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POFF, 0, NotSerialized)
                {
                    Local1 = (LNRD / 0x03E8)
                    Sleep (Local1)
                    \PIN.ON (RSTG)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                    }

                    If (CondRefOf (PWRG))
                    {
                        If ((GPPR () == One))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                    }
                }

                Method (PRST, 1, Serialized)
                {
                    If ((Arg0 == One))
                    {
                        \PIN.ON (RSTG)
                    }
                    Else
                    {
                        \PIN.OFF (RSTG)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (UPRD, 1, Serialized)
                {
                    If ((Arg0 <= 0x2710))
                    {
                        LNRD = Arg0
                    }

                    Return (LNRD) /* \_SB_.PC00.RP03.LNRD */
                }

                Method (PCPR, 1, Serialized)
                {
                    If ((Arg0 == 0x80000000))
                    {
                        PWRR = One
                        Return (0x02)
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        PWRR = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (\SCED))
                {
                    If ((\SCED == One))
                    {
                        Method (ADSD, 0, NotSerialized)
                        {
                            Return (Package (0x04)
                            {
                                ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                                Package (0x01)
                                {
                                    Package (0x02)
                                    {
                                        "HotPlugSupportInD3", 
                                        One
                                    }
                                }, 

                                ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                                Package (0x02)
                                {
                                    Package (0x02)
                                    {
                                        "ExternalFacingPort", 
                                        One
                                    }, 

                                    Package (0x02)
                                    {
                                        "UID", 
                                        Zero
                                    }
                                }
                            })
                        }

                        Scope (\_SB.PC00.RP03.PXSX)
                        {
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }
                    }
                }
            }
        }
    }

    If ((P2RN == 0x0B))
    {
        If (CondRefOf (\_SB.PC00.RP11))
        {
            Scope (\_SB.PC00.RP11)
            {
                Name (RSTG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                RSTG [Zero] = P2RG /* External reference */
                RSTG [One] = P2RP /* External reference */
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = P2PG /* External reference */
                PWRG [One] = P2EP /* External reference */
                Name (WAKG, Zero)
                WAKG = RW11 /* External reference */
                Name (SCLK, Zero)
                SCLK = Zero
                Name (WAKP, Zero)
                Name (WKEN, Zero)
                Name (WOFF, Zero)
                Name (LNRD, Zero)
                Name (PWRR, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C == 0x02))
                        {
                            Return (0x04)
                        }
                    }

                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = One
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (PPS0, 0, Serialized)
                {
                }

                Method (PPS3, 0, Serialized)
                {
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((GPRS () == Zero))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If ((VDID == 0xFFFFFFFF)){}
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            PON ()
                            L23D ()
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If ((VDID == 0xFFFFFFFF)){}
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            DL23 ()
                            POFF ()
                        }
                    }
                }

                Method (GPPR, 0, NotSerialized)
                {
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP != Zero) && (WKEN == Zero)))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PWRR))
                    {
                        If ((PWRR != Zero))
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (GPRS, 0, NotSerialized)
                {
                    If (CondRefOf (PGRT))
                    {
                        If ((PGRT == Zero))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C != 0x02))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (PSTA, 0, NotSerialized)
                {
                    If (\PIN.STA (RSTG))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }

                Method (PON, 0, NotSerialized)
                {
                    If (CondRefOf (WAKG))
                    {
                        If ((WAKG != Zero))
                        {
                            \_SB.SHPO (WAKG, One)
                            \_SB.CAGS (WAKG)
                        }
                    }

                    If (CondRefOf (PWRG))
                    {
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < PDOD))
                                {
                                    Sleep ((PDOD - Local0))
                                }

                                WOFF = Zero
                            }
                        }

                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POFF, 0, NotSerialized)
                {
                    Local1 = (LNRD / 0x03E8)
                    Sleep (Local1)
                    \PIN.ON (RSTG)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                    }

                    If (CondRefOf (PWRG))
                    {
                        If ((GPPR () == One))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                    }
                }

                Method (PRST, 1, Serialized)
                {
                    If ((Arg0 == One))
                    {
                        \PIN.ON (RSTG)
                    }
                    Else
                    {
                        \PIN.OFF (RSTG)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (UPRD, 1, Serialized)
                {
                    If ((Arg0 <= 0x2710))
                    {
                        LNRD = Arg0
                    }

                    Return (LNRD) /* \_SB_.PC00.RP11.LNRD */
                }

                Method (PCPR, 1, Serialized)
                {
                    If ((Arg0 == 0x80000000))
                    {
                        PWRR = One
                        Return (0x02)
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        PWRR = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    Debug = "[PTL UH LP5 RVP1 RTD3 SSDT][AcpiTableExit]"
    Debug = Timer
}

