/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT20.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000595 (1429)
 *     Revision         0x02
 *     Checksum         0x72
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ProjSsdt"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "ProjSsdt", 0x00000010)
{
    External (_SB_.PC00.LPCB.EC__.DOCD, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (PLDC, BuffObj)
    External (PLDI, BuffObj)
    External (PLDL, BuffObj)
    External (PLDR, BuffObj)
    External (PLR2, BuffObj)
    External (UCPD, MethodObj)    // 2 Arguments
    External (UPCI, PkgObj)
    External (UPCL, PkgObj)
    External (UPCR, PkgObj)
    External (UPR2, PkgObj)
    External (WIN8, UnknownObj)

    Scope (\_SB.PC00.XHCI.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (UCPD (One, One), UPCP) /* \_SB_.PC00.XHCI.RHUB.HS01._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS01._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = UCPD (One, 0x02)
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS01._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCR, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS02._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS02._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDR /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS02._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPR2, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS03._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS03._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLR2 /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS03._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (UCPD (0x02, One), UPCP) /* \_SB_.PC00.XHCI.RHUB.HS04._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS04._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = UCPD (0x02, 0x02)
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS04._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS05._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS05._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS05._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS06._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS06._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS06._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS07)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS07._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS07._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS07._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCR, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS01._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS01._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDR /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS01._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPR2, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS02._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS02._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLR2 /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS02._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS07)
    {
        Device (WCAM)
        {
            Name (_ADR, 0x07)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (\WIN8)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (\UPCI) /* External reference */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (\PLDC) /* External reference */
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS07)
    {
        Device (ICAM)
        {
            Name (_ADR, 0x09)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (\WIN8)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (\UPCI) /* External reference */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (\PLDC) /* External reference */
            }
        }
    }
}

