/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT23.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004E06 (19974)
 *     Revision         0x02
 *     Checksum         0x76
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "DptfTabl", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.FAN0.CRNF, MethodObj)    // 0 Arguments
    External (_SB_.FAN0.SRPM, MethodObj)    // 1 Arguments
    External (_SB_.IETM, DeviceObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.EC__, DeviceObj)
    External (_SB_.PC00.LPCB.EC__.GSTM, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC__.HKEY.DHKC, IntObj)
    External (_SB_.PC00.LPCB.EC__.HKEY.DYTC, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC__.HKEY.GBDV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.LPCB.EC__.HKEY.OEMV, IntObj)
    External (_SB_.PC00.LPCB.EC__.TSL1, IntObj)
    External (_SB_.PC00.MC__.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL1X, FieldUnitObj)
    External (_SB_.PL2X, FieldUnitObj)
    External (_SB_.PLDT.ART0, PkgObj)
    External (_SB_.PLDT.ART1, PkgObj)
    External (_SB_.PLDT.GDDV, MethodObj)    // 0 Arguments
    External (_SB_.PLDT.GHID, MethodObj)    // 1 Arguments
    External (_SB_.PLDT.PSVT, PkgObj)
    External (_SB_.PLDT.PTRT, MethodObj)    // 0 Arguments
    External (_SB_.PLWX, FieldUnitObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.SLPB, DeviceObj)
    External (_TZ_.ETMD, IntObj)
    External (_TZ_.TC2K, MethodObj)    // 1 Arguments
    External (_TZ_.THM0, ThermalZoneObj)
    External (_TZ_.THM0._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.TZ00, ThermalZoneObj)
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (CRTT, IntObj)
    External (GTST, MethodObj)    // 1 Arguments
    External (H8DR, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (MPID, IntObj)
    External (PF00, IntObj)
    External (PNHM, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRS, IntObj)
    External (RBEC, MethodObj)    // 1 Arguments
    External (STDV, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Debug = "[Dptf DptfTabl SSDT][AcpiTableEntry]"
    Debug = Timer
    Scope (\_SB)
    {
        OperationRegion (DNVS, SystemMemory, 0x6DF01000, 0x0029)
        Field (DNVS, AnyAcc, Lock, Preserve)
        {
            DTTE,   8, 
            DCFE,   32, 
            FND1,   8, 
            FND2,   8, 
            FND3,   8, 
            CHGE,   8, 
            BATR,   8, 
            S1DE,   8, 
            S2DE,   8, 
            S3DE,   8, 
            S4DE,   8, 
            S5DE,   8, 
            PCHE,   8, 
            PPSZ,   32, 
            PWRE,   8, 
            PPPR,   16, 
            ODV0,   8, 
            ODV1,   8, 
            ODV2,   8, 
            ODV3,   8, 
            ODV4,   8, 
            ODV5,   8, 
            CBCF,   8, 
            TTEF,   8, 
            FNAU,   8, 
            PCGL,   16, 
            PUPR,   8, 
            PLOR,   8, 
            PRTE,   16, 
            HEOL,   8, 
            TNML,   16
        }

        If (CondRefOf (\_SB.IETM))
        {
            Scope (\_SB.IETM)
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (CondRefOf (HIWC))
                    {
                        If (HIWC (Arg0))
                        {
                            If (CondRefOf (HIDW))
                            {
                                Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Name (PTRP, Zero)
                Name (PSEM, Zero)
                Name (ATRP, Zero)
                Name (ASEM, Zero)
                Name (YTRP, Zero)
                Name (YSEM, Zero)
                Name (DPTE, Zero)
                Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
                {
                    CreateDWordField (Arg3, Zero, STS1)
                    CreateDWordField (Arg3, 0x04, CAP1)
                    If ((CAP1 & One))
                    {
                        If ((DPTE == Zero))
                        {
                            DPTE = One
                            \_SB.PC00.LPCB.EC.HKEY.DYTC (0x01FF)
                            \_SB.PC00.LPCB.EC.HKEY.DYTC (0x800F0001)
                            If (\H8DR)
                            {
                                Local0 = \_SB.PC00.LPCB.EC.TSL1 /* External reference */
                            }
                            Else
                            {
                                Local0 = (\RBEC (0x89) & 0x7F)
                            }

                            If ((Local0 & 0x77))
                            {
                                \_SB.PC00.LPCB.EC.HKEY.DYTC (0x001F4001)
                            }
                            Else
                            {
                                \_SB.PC00.LPCB.EC.HKEY.DYTC (0x000F4001)
                            }

                            If (\_SB.PC00.LPCB.EC.HKEY.DHKC){}
                        }
                    }
                    ElseIf ((DPTE == One))
                    {
                        DPTE = Zero
                        \_SB.PC00.LPCB.EC.HKEY.DYTC (0x01FF)
                        If (\_SB.PC00.LPCB.EC.HKEY.DHKC){}
                    }

                    If ((Arg1 != One))
                    {
                        STS1 &= 0xFFFFFF00
                        STS1 |= 0x0A
                        Return (Arg3)
                    }

                    If ((Arg2 != 0x02))
                    {
                        STS1 &= 0xFFFFFF00
                        STS1 |= 0x02
                        Return (Arg3)
                    }

                    If (CondRefOf (\_SB.APSV))
                    {
                        If ((PSEM == Zero))
                        {
                            PSEM = One
                            PTRP = \_SB.APSV /* External reference */
                        }
                    }

                    If (CondRefOf (\_SB.AAC0))
                    {
                        If ((ASEM == Zero))
                        {
                            ASEM = One
                            ATRP = \_SB.AAC0 /* External reference */
                        }
                    }

                    If (CondRefOf (\_SB.ACRT))
                    {
                        If ((YSEM == Zero))
                        {
                            YSEM = One
                            YTRP = \_SB.ACRT /* External reference */
                        }
                    }

                    If ((Arg0 == ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                If ((CAP1 & 0x02))
                                {
                                    \_SB.AAC0 = 0x6E
                                }
                                Else
                                {
                                    \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                }

                                If ((CAP1 & 0x04))
                                {
                                    \_SB.APSV = 0x6E
                                }
                                Else
                                {
                                    \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                                }

                                If ((CAP1 & 0x08))
                                {
                                    \_SB.ACRT = 0xD2
                                }
                                Else
                                {
                                    \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                                }

                                Notify (\_TZ.THM0, 0x81) // Information Change
                            }
                            Else
                            {
                                \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                                \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                                \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                            }

                            Notify (\_TZ.THM0, 0x81) // Information Change
                        }

                        Return (Arg3)
                    }

                    Return (Arg3)
                }

                Method (DCFG, 0, NotSerialized)
                {
                    Return (\_SB.DCFE)
                }

                Name (ODVX, Package (0x16)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (ODVP, 0, Serialized)
                {
                    ODVX [Zero] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [Zero])
                    ODVX [One] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [One])
                    ODVX [0x02] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x02])
                    ODVX [0x03] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x03])
                    ODVX [0x04] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x04])
                    ODVX [0x05] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x05])
                    ODVX [0x06] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x06])
                    ODVX [0x07] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x07])
                    ODVX [0x08] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x08])
                    ODVX [0x09] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x09])
                    ODVX [0x0A] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0A])
                    ODVX [0x0B] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0B])
                    ODVX [0x0C] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0C])
                    ODVX [0x0D] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0D])
                    ODVX [0x0E] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0E])
                    ODVX [0x0F] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0F])
                    ODVX [0x10] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x10])
                    ODVX [0x11] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x11])
                    ODVX [0x12] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x12])
                    ODVX [0x13] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x13])
                    ODVX [0x14] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x14])
                    ODVX [0x15] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x15])
                    Return (ODVX) /* \_SB_.IETM.ODVX */
                }

                Name (PTTL, 0x14)
                Name (DTXX, Package (0x01)
                {
                    Package (0x08)
                    {
                        \_SB.IETM, 
                        \_SB.IETM, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
                Name (DAXX, Package (0x02)
                {
                    Zero, 
                    Package (0x0D)
                    {
                        \_SB.IETM, 
                        \_SB.IETM, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF
                    }
                })
                Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
                {
                    If (CondRefOf (\_SB.PLDT.PTRT))
                    {
                        Return (\_SB.PLDT.PTRT ())
                    }
                    Else
                    {
                        Return (DTXX) /* \_SB_.IETM.DTXX */
                    }
                }

                Method (PSVT, 0, NotSerialized)
                {
                    Return (\_SB.PLDT.PSVT) /* External reference */
                }

                Method (_ART, 0, NotSerialized)  // _ART: Active Cooling Relationship Table
                {
                    If (\_SB.PC00.LPCB.EC.SEN3.CTYP)
                    {
                        If (CondRefOf (\_SB.PLDT.ART1))
                        {
                            Return (\_SB.PLDT.ART1) /* External reference */
                        }
                        Else
                        {
                            Return (DAXX) /* \_SB_.IETM.DAXX */
                        }
                    }
                    ElseIf (CondRefOf (\_SB.PLDT.ART0))
                    {
                        Return (\_SB.PLDT.ART0) /* External reference */
                    }
                    Else
                    {
                        Return (DAXX) /* \_SB_.IETM.DAXX */
                    }
                }

                Method (GDDV, 0, Serialized)
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.HKEY.GBDV))
                    {
                        Return (\_SB.PC00.LPCB.EC.HKEY.GBDV ())
                    }
                    Else
                    {
                        Return (\_SB.PLDT.GDDV ())
                    }
                }

                Method (IMOK, 1, NotSerialized)
                {
                    Local1 = ((Arg0 << 0x10) & 0x03FF0000)
                    Local1 |= 0x07
                    \_SB.PC00.LPCB.EC.HKEY.DYTC (Local1)
                    Return (Arg0)
                }

                Method (DTNS, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 & 0x80))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN8, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x40))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN7, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x20))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN6, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x10))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN5, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x08))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN4, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x04))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN3, 0x90) // Device-Specific
                    }

                    If ((Local0 & 0x02))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN2, 0x90) // Device-Specific
                    }

                    If ((Local0 & One))
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN1, 0x90) // Device-Specific
                    }
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return (((Arg0 - 0x0AAC) / 0x0A))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (((Arg0 * 0x0A) + 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Local0 = (Arg0 + 0x0AAC)
            TMPL = (Local0 & 0xFF)
            TMPH = ((Local0 & 0xFF00) >> 0x08)
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return ((Arg0 - 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN1)
        {
            Name (_UID, "SEN1")  // _UID: Unique ID
            Name (_STR, Unicode ("CPU DTS Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, Zero)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN1.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S1DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN2)
        {
            Name (_UID, "SEN2")  // _UID: Unique ID
            Name (_STR, Unicode ("CPU Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, One)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN2.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S2DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN3)
        {
            Name (_UID, "SEN3")  // _UID: Unique ID
            Name (_STR, Unicode ("Memory(SSD GEN5) Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x02)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN3.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S3DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN4)
        {
            Name (_UID, "SEN4")  // _UID: Unique ID
            Name (_STR, Unicode ("CPU VR Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x03)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN4.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S4DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN5)
        {
            Name (_UID, "SEN5")  // _UID: Unique ID
            Name (_STR, Unicode ("Charge Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x04)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN5.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S5DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN6)
        {
            Name (_UID, "SEN6")  // _UID: Unique ID
            Name (_STR, Unicode ("Ambient Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x05)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN6.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN7)
        {
            Name (_UID, "SEN7")  // _UID: Unique ID
            Name (_STR, Unicode ("Gen4 SSD Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x06)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN7.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (Ones)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN8)
        {
            Name (_UID, "SEN8")  // _UID: Unique ID
            Name (_STR, Unicode ("FIN Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x07)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, 0x32)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((SNID == Zero))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM)){}
                    Else
                    {
                        Local0 = \GTST (One)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == One))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (One)
                    }
                    Else
                    {
                        Local0 = \GTST (0x02)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x02)
                    }
                    Else
                    {
                        Local0 = \GTST (0x08)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x03))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x07)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0A)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x04))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x03)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0C)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x05))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x04)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0D)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x06))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x05)
                    }
                    Else
                    {
                        Local0 = \GTST (0x0B)
                    }

                    \_SB.FAN0.SRPM (Local0)
                    \_SB.FAN0.CRNF ()
                }
                ElseIf ((SNID == 0x07))
                {
                    If (CondRefOf (\_SB.PC00.LPCB.EC.GSTM))
                    {
                        Local0 = \_SB.PC00.LPCB.EC.GSTM (0x08)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = One
                }

                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                If ((SNID == Zero))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
                }
                ElseIf ((SNID == One))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x02))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x03))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN4, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x04))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x05))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN6, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x06))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN7, 0x91) // Device-Specific
                }
                ElseIf ((SNID == 0x07))
                {
                    Notify (\_SB.PC00.LPCB.EC.SEN8, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.PC00.LPCB.EC__.SEN8.SNSP */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (Ones)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, Zero)
        }
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (PFLG, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((\_SB.DTTE == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (CPWR, SystemMemory, ((\_SB.PC00.MC.MHBR << 0x12) + 0x5000), 0x1000)
        Field (CPWR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            Offset (0x978), 
            PCTP,   8, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            Offset (0xF54), 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (((XPCC == Zero) && CondRefOf (\_SB.CBMI)))
            {
                CPLX ()
                XPCC = One
            }

            Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If ((PWRU == Zero))
            {
                PPUU = One
            }
            Else
            {
                PPUU = (PWRU-- << 0x02)
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            If ((Arg1 == Zero))
            {
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
            Else
            {
                CNVT *= 0x03E8
                RMDR *= 0x03E8
                RMDR /= PPUU
                CNVT += RMDR /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
        }

        Method (CPLX, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL1X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLWX * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLWX * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* \_SB_.PPSZ */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL2X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL2X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* \_SB_.PPSZ */
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPUR, 1, NotSerialized)
        {
            If ((Arg0 <= \TCNT))
            {
                If ((\_SB.PAGD._STA () == 0x0F))
                {
                    \_SB.PAGD._PUR [One] = Arg0
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Method (PCCC, 0, Serialized)
        {
            PCCX [Zero] = One
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    DerefOf (PCCX [One]) [Zero] = 0xA7F8
                    DerefOf (PCCX [One]) [One] = 0x00017318
                }
                Case (0x2F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x9858
                    DerefOf (PCCX [One]) [One] = 0x00014C08
                }
                Case (0x25)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x7148
                    DerefOf (PCCX [One]) [One] = 0xD6D8
                }
                Case (0x19)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x3E80
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0B)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x61A8
                }
                Default
                {
                    DerefOf (PCCX [One]) [Zero] = 0xFF
                    DerefOf (PCCX [One]) [One] = 0xFF
                }

            }

            Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (_TMP, 0, Serialized)  // _TMP: Temperature
        {
            Return (\_TZ.THM0._TMP ())
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            LSTM = Arg0
            Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Name (PTYP, Zero)
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                Return (\_SB.PR00._PSS ())
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_SB.PR00._TSS))
            {
                Return (\_SB.PR00._TSS ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_SB.PR00._TPC))
            {
                Return (\_SB.PR00._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }
            })
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_SB.PR00._TSD))
            {
                Return (\_SB.PR00._TSD ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If ((CondRefOf (\_SB.PR00._TSS) && CondRefOf (\_SB.CFGD)))
            {
                If ((\_SB.CFGD & 0x2000))
                {
                    Return ((SizeOf (\_SB.PR00.TSMF) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.TSMC) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Return ((SizeOf (\_SB.PR00.TPSS) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.LPSS) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (TJMX, 0x6E)
        Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
        {
            Return (Zero)
        }

        Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x0A
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x1E
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x28
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x37
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x46
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
        })
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
        }
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75") /* Unknown UUID */
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3") /* Unknown UUID */
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae") /* Unknown UUID */
        })
        Name (DA2P, Package (0x01)
        {
            ToUUID ("0e56fab6-bdfc-4e8c-8246-40ecfd4d74ea") /* Unknown UUID */
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a") /* Unknown UUID */
        })
        Name (RFIP, Package (0x01)
        {
            ToUUID ("c4ce1849-243a-49f3-b8d5-f97002f38e6a") /* Unknown UUID */
        })
        Name (POBP, Package (0x01)
        {
            ToUUID ("f5a35014-c209-46a4-993a-eb56de7530a1") /* Unknown UUID */
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d") /* Unknown UUID */
        })
        Name (DVSP, Package (0x01)
        {
            ToUUID ("6ed722a7-9240-48a5-b479-31eef723d7cf") /* Unknown UUID */
        })
        Name (DPID, Package (0x01)
        {
            ToUUID ("42496e14-bc1b-46e8-a798-ca915464426f") /* Unknown UUID */
        })
    }

    Scope (\_SB.IETM)
    {
        Method (TEVT, 2, Serialized)
        {
            Switch (ToString (Arg0, Ones))
            {
                Case ("IETM")
                {
                    Notify (\_SB.IETM, Arg1)
                }
                Case ("TCPU")
                {
                    Notify (\_SB.PC00.TCPU, Arg1)
                }

            }

            If (CondRefOf (\_SB.PC00.LPCB.H_EC))
            {
                Switch (ToString (Arg0, Ones))
                {
                    Case ("SEN1")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN1, Arg1)
                    }
                    Case ("SEN2")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN2, Arg1)
                    }
                    Case ("SEN3")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN3, Arg1)
                    }
                    Case ("SEN4")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN4, Arg1)
                    }
                    Case ("SEN5")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN5, Arg1)
                    }
                    Case ("SEN6")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN6, Arg1)
                    }
                    Case ("SEN7")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN7, Arg1)
                    }
                    Case ("SEN8")
                    {
                        Notify (\_SB.PC00.LPCB.EC.SEN8, Arg1)
                    }

                }
            }
        }
    }

    Debug = "[Dptf DptfTabl SSDT][AcpiTableExit]"
    Debug = Timer
}

