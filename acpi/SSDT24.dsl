/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT24.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000F01 (3841)
 *     Revision         0x02
 *     Checksum         0x21
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "UcsiTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "UcsiTabl", 0x00001000)
{
    External (_SB_.PC00.LPCB.EC__.CHKS, MethodObj)    // 0 Arguments
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (H8DR, UnknownObj)
    External (UCMS, UnknownObj)
    External (UCPD, MethodObj)    // 2 Arguments
    External (UDRS, UnknownObj)
    External (USTC, UnknownObj)
    External (XDCE, UnknownObj)

    Debug = "[UcsiTabl SSDT][AcpiTableEntry]"
    Debug = Timer
    If (CondRefOf (ADBG))
    {
        ADBG ("[UcsiTabl SSDT][AcpiTableEntry]")
    }

    OperationRegion (UPNV, SystemMemory, 0x6DF00000, 0x0042)
    Field (UPNV, AnyAcc, Lock, Preserve)
    {
        UBCB,   32, 
        TCCM,   16, 
        TP1U,   8, 
        TP2U,   8, 
        TP3U,   8, 
        TP4U,   8, 
        TP5U,   8, 
        TP6U,   8, 
        TP7U,   8, 
        TP8U,   8, 
        TP9U,   8, 
        TPAU,   8, 
        CRP1,   8, 
        CRP2,   8, 
        CRP3,   8, 
        CRP4,   8, 
        CRP5,   8, 
        CRP6,   8, 
        CRP7,   8, 
        CRP8,   8, 
        CRP9,   8, 
        CRPA,   8, 
        CRV1,   8, 
        CRV2,   8, 
        CRV3,   8, 
        CRV4,   8, 
        CRV5,   8, 
        CRV6,   8, 
        CRV7,   8, 
        CRV8,   8, 
        CRV9,   8, 
        CRVA,   8, 
        CRC1,   8, 
        CRC2,   8, 
        CRC3,   8, 
        CRC4,   8, 
        CRC5,   8, 
        CRC6,   8, 
        CRC7,   8, 
        CRC8,   8, 
        CRC9,   8, 
        CRCA,   8, 
        CRT1,   8, 
        CRT2,   8, 
        CRT3,   8, 
        CRT4,   8, 
        CRT5,   8, 
        CRT6,   8, 
        CRT7,   8, 
        CRT8,   8, 
        CRT9,   8, 
        CRTA,   8, 
        CRB1,   8, 
        CRB2,   8, 
        CRB3,   8, 
        CRB4,   8, 
        CRB5,   8, 
        CRB6,   8, 
        CRB7,   8, 
        CRB8,   8, 
        CRB9,   8, 
        CRBA,   8
    }

    If (CondRefOf (ADBG))
    {
        ADBG (Concatenate ("TCCM:", ToHexString (TCCM)))
    }

    If (CondRefOf (ADBG))
    {
        ADBG (Concatenate ("UCMS:", ToHexString (UCMS)))
    }

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Method (MGBS, 1, Serialized)
            {
                If ((UCMS >= 0x02))
                {
                    Local0 = 0x0100
                }
                ElseIf ((Arg0 == One))
                {
                    Local0 = 0x10
                }
                Else
                {
                    Local0 = 0x14
                }

                If (CondRefOf (ADBG))
                {
                    ADBG (Concatenate ("USBC.MGBS", ToHexString (Local0)))
                }

                Return (Local0)
            }

            Method (UCMI, 0, Serialized)
            {
                Local0 = 0x10
                Local1 = (UBCB + Local0)
                If (CondRefOf (ADBG))
                {
                    ADBG (Concatenate ("UBTC", ToHexString (UBCB)))
                }

                If (CondRefOf (ADBG))
                {
                    ADBG (Concatenate ("UCSI Input Data Structure offset:", ToHexString (Local1)))
                }

                Return (Local1)
            }

            Method (UCMO, 0, Serialized)
            {
                Local0 = MGBS (Zero)
                Local0 = (Local0 + 0x10)
                Local1 = (UBCB + Local0)
                If (CondRefOf (ADBG))
                {
                    ADBG (Concatenate ("UCSI Output Data Structure offset:", ToHexString (Local1)))
                }

                Return (Local1)
            }

            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            OperationRegion (USBC, SystemMemory, UBCB, 0x10)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8
            }

            OperationRegion (USCI, SystemMemory, UCMI (), MGBS (Zero))
            Field (USCI, ByteAcc, Lock, Preserve)
            {
                MI00,   8, 
                MI01,   8, 
                MI02,   8, 
                MI03,   8, 
                MI04,   8, 
                MI05,   8, 
                MI06,   8, 
                MI07,   8, 
                MI08,   8, 
                MI09,   8, 
                MI0A,   8, 
                MI0B,   8, 
                MI0C,   8, 
                MI0D,   8, 
                MI0E,   8, 
                MI0F,   8, 
                MI10,   8, 
                MI11,   8, 
                MI12,   8, 
                MI13,   8
            }

            OperationRegion (UCSO, SystemMemory, UCMO (), MGBS (One))
            Field (UCSO, ByteAcc, Lock, Preserve)
            {
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            OperationRegion (ECSI, EmbeddedControl, Zero, 0x0100)
            Field (ECSI, ByteAcc, NoLock, Preserve)
            {
                Offset (0x50), 
                EMPR,   8
            }

            OperationRegion (ECSM, SystemMemory, 0xFE0B0A50, 0x30)
            Field (ECSM, AnyAcc, Lock, Preserve)
            {
                Offset (0x01), 
                    ,   7, 
                HMDN,   1, 
                HADD,   8, 
                HCMD,   8, 
                HD00,   8, 
                HD01,   8, 
                HD02,   8, 
                HD03,   8, 
                HD04,   8, 
                HD05,   8, 
                HD06,   8, 
                HD07,   8, 
                HD08,   8, 
                HD09,   8, 
                HD0A,   8, 
                HD0B,   8, 
                HD0C,   8, 
                HD0D,   8, 
                HD0E,   8, 
                HD0F,   8, 
                Offset (0x24), 
                HCNT,   8
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* \UBCB */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((USTC == One) && (TCCM != Zero)))
                {
                    If ((UCMS != Zero))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            If ((((TCCM & One) != Zero) && ((
                TP1U != Zero) && ((CRT1 >= 0x08) && (CRT1 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR01")
                }

                Device (CR01)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (One, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (One, One))
                    }
                }
            }

            If ((((TCCM & 0x02) != Zero) && ((
                TP2U != Zero) && ((CRT2 >= 0x08) && (CRT2 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR02")
                }

                Device (CR02)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x02, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x02, One))
                    }
                }
            }

            If ((((TCCM & 0x04) != Zero) && ((
                TP3U != Zero) && ((CRT3 >= 0x08) && (CRT3 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR03")
                }

                Device (CR03)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x03, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x03, One))
                    }
                }
            }

            If ((((TCCM & 0x08) != Zero) && ((
                TP4U != Zero) && ((CRT4 >= 0x08) && (CRT4 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR04")
                }

                Device (CR04)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x04, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x04, One))
                    }
                }
            }

            If ((((TCCM & 0x10) != Zero) && ((
                TP5U != Zero) && ((CRT5 >= 0x08) && (CRT5 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR05")
                }

                Device (CR05)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x05, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x05, One))
                    }
                }
            }

            If ((((TCCM & 0x20) != Zero) && ((
                TP6U != Zero) && ((CRT6 >= 0x08) && (CRT6 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR06")
                }

                Device (CR06)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x06, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x06, One))
                    }
                }
            }

            If ((((TCCM & 0x40) != Zero) && ((
                TP7U != Zero) && ((CRT7 >= 0x08) && (CRT7 <= 0x0A)))))
            {
                Device (CR07)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG ("[UCSI] CR07")
                    }

                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x07, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x07, One))
                    }
                }
            }

            If ((((TCCM & 0x80) != Zero) && ((
                TP8U != Zero) && ((CRT8 >= 0x08) && (CRT8 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR08")
                }

                Device (CR08)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x08, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x08, One))
                    }
                }
            }

            If ((((TCCM & 0x0100) != Zero) && ((
                TP9U != Zero) && ((CRT9 >= 0x08) && (CRT9 <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR09")
                }

                Device (CR09)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x09, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x09, One))
                    }
                }
            }

            If ((((TCCM & 0x0200) != Zero) && ((
                TPAU != Zero) && ((CRTA >= 0x08) && (CRTA <= 0x0A)))))
            {
                If (CondRefOf (ADBG))
                {
                    ADBG ("[UCSI] CR0A")
                }

                Device (CR0A)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\UCPD (0x0A, 0x02))
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UCPD (0x0A, One))
                    }
                }
            }

            Mutex (UBSY, 0x00)
            Method (ECWR, 0, Serialized)
            {
                If (\H8DR)
                {
                    Acquire (UBSY, 0xFFFF)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    HADD = 0x02
                    Sleep (One)
                    HCMD = 0x06
                    Sleep (One)
                    HD00 = MGO0 /* \_SB_.UBTC.MGO0 */
                    Sleep (One)
                    HD01 = MGO1 /* \_SB_.UBTC.MGO1 */
                    Sleep (One)
                    HD02 = MGO2 /* \_SB_.UBTC.MGO2 */
                    Sleep (One)
                    HD03 = MGO3 /* \_SB_.UBTC.MGO3 */
                    Sleep (One)
                    HD04 = MGO4 /* \_SB_.UBTC.MGO4 */
                    Sleep (One)
                    HD05 = MGO5 /* \_SB_.UBTC.MGO5 */
                    Sleep (One)
                    HD06 = MGO6 /* \_SB_.UBTC.MGO6 */
                    Sleep (One)
                    HD07 = MGO7 /* \_SB_.UBTC.MGO7 */
                    Sleep (One)
                    HD08 = MGO8 /* \_SB_.UBTC.MGO8 */
                    Sleep (One)
                    HD09 = MGO9 /* \_SB_.UBTC.MGO9 */
                    Sleep (One)
                    HD0A = MGOA /* \_SB_.UBTC.MGOA */
                    Sleep (One)
                    HD0B = MGOB /* \_SB_.UBTC.MGOB */
                    Sleep (One)
                    HD0C = MGOC /* \_SB_.UBTC.MGOC */
                    Sleep (One)
                    HD0D = MGOD /* \_SB_.UBTC.MGOD */
                    Sleep (One)
                    HD0E = MGOE /* \_SB_.UBTC.MGOE */
                    Sleep (One)
                    HD0F = MGOF /* \_SB_.UBTC.MGOF */
                    Sleep (One)
                    HCNT = 0x10
                    Sleep (One)
                    EMPR = 0x0A
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    HADD = 0x02
                    Sleep (One)
                    HCMD = 0x04
                    Sleep (One)
                    HD00 = CTL0 /* \_SB_.UBTC.CTL0 */
                    Sleep (One)
                    HD01 = CTL1 /* \_SB_.UBTC.CTL1 */
                    Sleep (One)
                    HD02 = CTL2 /* \_SB_.UBTC.CTL2 */
                    Sleep (One)
                    HD03 = CTL3 /* \_SB_.UBTC.CTL3 */
                    Sleep (One)
                    HD04 = CTL4 /* \_SB_.UBTC.CTL4 */
                    Sleep (One)
                    HD05 = CTL5 /* \_SB_.UBTC.CTL5 */
                    Sleep (One)
                    HD06 = CTL6 /* \_SB_.UBTC.CTL6 */
                    Sleep (One)
                    HD07 = CTL7 /* \_SB_.UBTC.CTL7 */
                    Sleep (One)
                    HCNT = 0x08
                    Sleep (One)
                    EMPR = 0x0A
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    Release (UBSY)
                }
            }

            Method (ECRD, 0, Serialized)
            {
                If (\H8DR)
                {
                    Acquire (UBSY, 0xFFFF)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    HADD = 0x02
                    Sleep (One)
                    HCMD = 0x05
                    Sleep (One)
                    HCNT = 0x10
                    Sleep (One)
                    EMPR = 0x0B
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    MI00 = HD00 /* \_SB_.UBTC.HD00 */
                    Sleep (One)
                    MI01 = HD01 /* \_SB_.UBTC.HD01 */
                    Sleep (One)
                    MI02 = HD02 /* \_SB_.UBTC.HD02 */
                    Sleep (One)
                    MI03 = HD03 /* \_SB_.UBTC.HD03 */
                    Sleep (One)
                    MI04 = HD04 /* \_SB_.UBTC.HD04 */
                    Sleep (One)
                    MI05 = HD05 /* \_SB_.UBTC.HD05 */
                    Sleep (One)
                    MI06 = HD06 /* \_SB_.UBTC.HD06 */
                    Sleep (One)
                    MI07 = HD07 /* \_SB_.UBTC.HD07 */
                    Sleep (One)
                    MI08 = HD08 /* \_SB_.UBTC.HD08 */
                    Sleep (One)
                    MI09 = HD09 /* \_SB_.UBTC.HD09 */
                    Sleep (One)
                    MI0A = HD0A /* \_SB_.UBTC.HD0A */
                    Sleep (One)
                    MI0B = HD0B /* \_SB_.UBTC.HD0B */
                    Sleep (One)
                    MI0C = HD0C /* \_SB_.UBTC.HD0C */
                    Sleep (One)
                    MI0D = HD0D /* \_SB_.UBTC.HD0D */
                    Sleep (One)
                    MI0E = HD0E /* \_SB_.UBTC.HD0E */
                    Sleep (One)
                    MI0F = HD0F /* \_SB_.UBTC.HD0F */
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    HADD = 0x02
                    Sleep (One)
                    HCMD = 0x03
                    Sleep (One)
                    HCNT = 0x04
                    Sleep (One)
                    EMPR = 0x0B
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    CCI0 = HD00 /* \_SB_.UBTC.HD00 */
                    Sleep (One)
                    CCI1 = HD01 /* \_SB_.UBTC.HD01 */
                    Sleep (One)
                    CCI2 = HD02 /* \_SB_.UBTC.HD02 */
                    Sleep (One)
                    CCI3 = HD03 /* \_SB_.UBTC.HD03 */
                    Sleep (One)
                    \_SB.PC00.LPCB.EC.CHKS ()
                    Release (UBSY)
                }
            }

            Method (NTFY, 0, Serialized)
            {
                ECRD ()
                Sleep (One)
                Notify (\_SB.UBTC, 0x80) // Status Change
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (OPMP, Buffer (0x18){})
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x1F                                             // .
                            })
                        }
                        Case (One)
                        {
                            ECWR ()
                        }
                        Case (0x02)
                        {
                            ECRD ()
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }
                        Case (0x04)
                        {
                            Return (UDRS) /* External reference */
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    If (CondRefOf (ADBG))
    {
        ADBG ("[UcsiTabl SSDT][AcpiTableExit]")
    }

    Debug = "[UcsiTabl SSDT][AcpiTableExit]"
    Debug = Timer
}

