;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.3 (May 29 2018) (MINGW32)
; This file was generated Tue May 29 13:34:37 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"3S4SVoltmeter2.c"
	list	p=7333
	radix dec
	include "7333.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__mulint
	extern	_INDF0bits
	extern	_INDF1bits
	extern	_INDF2bits
	extern	_HIBYTEbits
	extern	_FSR0bits
	extern	_FSR1bits
	extern	_PCLbits
	extern	_PFLAGbits
	extern	_MCRbits
	extern	_INDF3bits
	extern	_INTEbits
	extern	_INTFbits
	extern	_OSCMbits
	extern	_INTE1bits
	extern	_INTF1bits
	extern	_KBCRbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_PDP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_PDP1bits
	extern	_IOP2bits
	extern	_OEP2bits
	extern	_PUP2bits
	extern	_PDP2bits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T0LOADbits
	extern	_T0DATAbits
	extern	_T1CRbits
	extern	_T1CNTHbits
	extern	_T1CNTLbits
	extern	_T1LOADHbits
	extern	_T1LOADLbits
	extern	_T1DATAHbits
	extern	_T1DATALbits
	extern	_IICCRbits
	extern	_IICSRbits
	extern	_IICDRbits
	extern	_EECRbits
	extern	_EEMASKbits
	extern	_EEARbits
	extern	_EEDRbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADRHbits
	extern	_ADRLbits
	extern	_ADIOS0bits
	extern	_ADIOS1bits
	extern	_OSADJCRbits
	extern	_T2CRbits
	extern	_T2CNTHbits
	extern	_T2CNTLbits
	extern	_T2LOADHbits
	extern	_T2LOADLbits
	extern	_T3CRbits
	extern	_T3CNTbits
	extern	_T3LOADbits
	extern	_SCONbits
	extern	_SBUFbits
	extern	_SADDRbits
	extern	_SADENbits
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_PFLAG
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_OSCM
	extern	_INTE1
	extern	_INTF1
	extern	_KBCR
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_PDP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_PDP1
	extern	_IOP2
	extern	_OEP2
	extern	_PUP2
	extern	_PDP2
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNTH
	extern	_T1CNTL
	extern	_T1LOADH
	extern	_T1LOADL
	extern	_T1DATAH
	extern	_T1DATAL
	extern	_IICCR
	extern	_IICSR
	extern	_IICDR
	extern	_EECR
	extern	_EEMASK
	extern	_EEAR
	extern	_EEDR
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_ADIOS0
	extern	_ADIOS1
	extern	_OSADJCR
	extern	_T2CR
	extern	_T2CNTH
	extern	_T2CNTL
	extern	_T2LOADH
	extern	_T2LOADL
	extern	_T3CR
	extern	_T3CNT
	extern	_T3LOAD
	extern	_SCON
	extern	_SBUF
	extern	_SADDR
	extern	_SADEN
	extern	__mulchar
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Delay1mS_1M
	global	_SampleRelatedChannel
	global	_initial
	global	_InitRam
	global	_AD_Init_mode
	global	_All_Adc_Convert
	global	_ADC_Value_Ratio
	global	_LCD_write_hanzi
	global	_LCD_write_shu57
	global	_LCD_clear
	global	_LCD_set_XY
	global	_LCD_init
	global	_LCD_write_byte
	global	_EEPROM_Write
	global	_EEPROM_Read
	global	_main
	global	_int_isr
	global	_Flag1
	global	_ABuf
	global	_StatusBuf
	global	_AD_Init
	global	_Data_OSADJCR
	global	_ADH_temp
	global	_ADL_temp
	global	_BT_VIN_AD
	global	_B3_VIN_AD
	global	_B2_VIN_AD
	global	_B1_VIN_AD
	global	_IO_AD
	global	_SEC_VIN_AD
	global	_NTC_AD
	global	_BT_Single_VIN_AD
	global	_B3_Single_VIN_AD
	global	_B2_Single_VIN_AD
	global	_B1_Single_VIN_AD
	global	_BT_Ratio_VIN_AD
	global	_B3_Ratio_VIN_AD
	global	_B2_Ratio_VIN_AD
	global	_B1_Ratio_VIN_AD
	global	_EEPROM_Data_Value
	global	_ADC_Ratio_Inter_JI
	global	_LooP_JI
	global	_Ratio_Flag1_A5
	global	_Ratio_Flag2_CA
	global	_Read_EEPROM_Temp_H
	global	_Read_EEPROM_Temp_L
	global	_shuzi57
	global	_hanzi

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_3S4SVoltmeter2_0	udata
_Flag1	res	1

UD_3S4SVoltmeter2_1	udata
_ABuf	res	1

UD_3S4SVoltmeter2_2	udata
_StatusBuf	res	1

UD_3S4SVoltmeter2_3	udata
_AD_Init	res	2

UD_3S4SVoltmeter2_4	udata
_Data_OSADJCR	res	1

UD_3S4SVoltmeter2_5	udata
_ADH_temp	res	1

UD_3S4SVoltmeter2_6	udata
_ADL_temp	res	1

UD_3S4SVoltmeter2_7	udata
_BT_VIN_AD	res	2

UD_3S4SVoltmeter2_8	udata
_B3_VIN_AD	res	2

UD_3S4SVoltmeter2_9	udata
_B2_VIN_AD	res	2

UD_3S4SVoltmeter2_10	udata
_B1_VIN_AD	res	2

UD_3S4SVoltmeter2_11	udata
_IO_AD	res	2

UD_3S4SVoltmeter2_12	udata
_SEC_VIN_AD	res	2

UD_3S4SVoltmeter2_13	udata
_NTC_AD	res	2

UD_3S4SVoltmeter2_14	udata
_BT_Single_VIN_AD	res	2

UD_3S4SVoltmeter2_15	udata
_B3_Single_VIN_AD	res	2

UD_3S4SVoltmeter2_16	udata
_B2_Single_VIN_AD	res	2

UD_3S4SVoltmeter2_17	udata
_B1_Single_VIN_AD	res	2

UD_3S4SVoltmeter2_18	udata
_BT_Ratio_VIN_AD	res	2

UD_3S4SVoltmeter2_19	udata
_B3_Ratio_VIN_AD	res	2

UD_3S4SVoltmeter2_20	udata
_B2_Ratio_VIN_AD	res	2

UD_3S4SVoltmeter2_21	udata
_B1_Ratio_VIN_AD	res	2

UD_3S4SVoltmeter2_22	udata
_EEPROM_Data_Value	res	1

UD_3S4SVoltmeter2_23	udata
_ADC_Ratio_Inter_JI	res	1

UD_3S4SVoltmeter2_24	udata
_LooP_JI	res	1

UD_3S4SVoltmeter2_25	udata
_Ratio_Flag1_A5	res	1

UD_3S4SVoltmeter2_26	udata
_Ratio_Flag2_CA	res	1

UD_3S4SVoltmeter2_27	udata
_Read_EEPROM_Temp_H	res	1

UD_3S4SVoltmeter2_28	udata
_Read_EEPROM_Temp_L	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_3S4SVoltmeter2_0	udata
r0x1060	res	1
r0x1061	res	1
r0x1062	res	1
r0x1063	res	1
r0x1064	res	1
r0x1065	res	1
r0x103D	res	1
r0x104E	res	1
r0x104F	res	1
r0x1050	res	1
r0x1051	res	1
r0x105E	res	1
r0x105F	res	1
r0x1059	res	1
r0x105A	res	1
r0x105B	res	1
r0x105C	res	1
r0x105D	res	1
r0x1052	res	1
r0x1053	res	1
r0x1054	res	1
r0x1055	res	1
r0x1056	res	1
r0x1057	res	1
r0x1058	res	1
r0x103E	res	1
r0x103F	res	1
r0x1040	res	1
r0x1041	res	1
r0x1042	res	1
r0x1043	res	1
r0x1045	res	1
r0x1044	res	1
r0x1046	res	1
r0x1047	res	1
r0x1048	res	1
r0x1049	res	1
r0x104A	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x1037	res	1
r0x1038	res	1
r0x1039	res	1
r0x103A	res	1
r0x103C	res	1
r0x103B	res	1
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
r0x102D	res	1
r0x102E	res	1
r0x102F	res	1
r0x1030	res	1
r0x1031	res	1
r0x1032	res	1
r0x1033	res	1
r0x1034	res	1
r0x1036	res	1
r0x1035	res	1
r0x1028	res	1
r0x1027	res	1
r0x1029	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_3S4SVoltmeter2_0	code
_shuzi57
	dw 0x3e
	dw 0x51
	dw 0x49
	dw 0x45
	dw 0x3e
	dw 0x00
	dw 0x42
	dw 0x7f
	dw 0x40
	dw 0x00
	dw 0x42
	dw 0x61
	dw 0x51
	dw 0x49
	dw 0x46
	dw 0x21
	dw 0x41
	dw 0x45
	dw 0x4b
	dw 0x31
	dw 0x18
	dw 0x14
	dw 0x12
	dw 0x7f
	dw 0x10
	dw 0x27
	dw 0x45
	dw 0x45
	dw 0x45
	dw 0x39
	dw 0x3c
	dw 0x4a
	dw 0x49
	dw 0x49
	dw 0x30
	dw 0x01
	dw 0x71
	dw 0x09
	dw 0x05
	dw 0x03
	dw 0x36
	dw 0x49
	dw 0x49
	dw 0x49
	dw 0x36
	dw 0x06
	dw 0x49
	dw 0x49
	dw 0x29
	dw 0x1e
	dw 0x00
	dw 0x60
	dw 0x60
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x36
	dw 0x36
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x7f
	dw 0x49
	dw 0x49
	dw 0x49
	dw 0x36
	dw 0x01
	dw 0x01
	dw 0x7f
	dw 0x01
	dw 0x01
	dw 0x1f
	dw 0x20
	dw 0x40
	dw 0x20
	dw 0x1f
	dw 0x7f
	dw 0x08
	dw 0x14
	dw 0x22
	dw 0x41


ID_3S4SVoltmeter2_1	code
_hanzi
	dw 0xff
	dw 0xff
	dw 0x7f
	dw 0xbf
	dw 0xdf
	dw 0xaf
	dw 0xb7
	dw 0x18
	dw 0xd7
	dw 0xef
	dw 0xdf
	dw 0xbf
	dw 0xbf
	dw 0x7f
	dw 0x7f
	dw 0xff
	dw 0xfe
	dw 0xfe
	dw 0xbf
	dw 0xbf
	dw 0xb5
	dw 0xad
	dw 0xbd
	dw 0xc0
	dw 0xde
	dw 0xce
	dw 0xd2
	dw 0xdf
	dw 0xdf
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xdf
	dw 0xef
	dw 0xf7
	dw 0x03
	dw 0xfc
	dw 0xff
	dw 0x6f
	dw 0x80
	dw 0x77
	dw 0x7b
	dw 0x7d
	dw 0x7f
	dw 0x1f
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xfb
	dw 0xfb
	dw 0xfb
	dw 0xfa
	dw 0xfb
	dw 0xfb
	dw 0x80
	dw 0xfd
	dw 0xfd
	dw 0xfd
	dw 0xfd
	dw 0xfd
	dw 0xfd
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xdf
	dw 0xdf
	dw 0x01
	dw 0x6f
	dw 0xff
	dw 0x57
	dw 0x57
	dw 0x00
	dw 0xab
	dw 0xab
	dw 0x0b
	dw 0xbb
	dw 0xbf
	dw 0xff
	dw 0xff
	dw 0xfd
	dw 0xfd
	dw 0xde
	dw 0x80
	dw 0xff
	dw 0xbf
	dw 0xc5
	dw 0xed
	dw 0xe0
	dw 0xda
	dw 0xda
	dw 0xba
	dw 0xbf
	dw 0xbf
	dw 0xbf
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xe7
	dw 0xf7
	dw 0xf7
	dw 0xf7
	dw 0x36
	dw 0x49
	dw 0x7b
	dw 0x7b
	dw 0x7b
	dw 0x73
	dw 0x7b
	dw 0x7f
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xbe
	dw 0xbe
	dw 0xbe
	dw 0xde
	dw 0xd8
	dw 0xeb
	dw 0xf7
	dw 0xf3
	dw 0xec
	dw 0xef
	dw 0xdf
	dw 0xff
	dw 0xff
	dw 0xff
	dw 0xff


;@Allocation info for local variables in function 'main'
;@main initial                   Allocated to registers ;size:2
;@main SampleRelatedChannel      Allocated to registers ;size:2
;@main InitRam                   Allocated to registers ;size:2
;@main Delay1mS_1M               Allocated to registers ;size:2
;@main AD_Init_mode              Allocated to registers ;size:2
;@main EEPROM_Read               Allocated to registers ;size:2
;@main EEPROM_Write              Allocated to registers ;size:2
;@main ADC_Value_Ratio           Allocated to registers ;size:2
;@main All_Adc_Convert           Allocated to registers ;size:2
;@main LCD_write_byte            Allocated to registers ;size:2
;@main LCD_init                  Allocated to registers ;size:2
;@main LCD_set_XY                Allocated to registers ;size:2
;@main LCD_clear                 Allocated to registers ;size:2
;@main LCD_write_hanzi           Allocated to registers ;size:2
;@main LCD_write_shu57           Allocated to registers ;size:2
;@main main                      Allocated to registers ;size:2
;@main INDF0bits                 Allocated to registers ;size:1
;@main INDF1bits                 Allocated to registers ;size:1
;@main INDF2bits                 Allocated to registers ;size:1
;@main HIBYTEbits                Allocated to registers ;size:1
;@main FSR0bits                  Allocated to registers ;size:1
;@main FSR1bits                  Allocated to registers ;size:1
;@main PCLbits                   Allocated to registers ;size:1
;@main PFLAGbits                 Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INDF3bits                 Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main INTE1bits                 Allocated to registers ;size:1
;@main INTF1bits                 Allocated to registers ;size:1
;@main KBCRbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main PDP0bits                  Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main PDP1bits                  Allocated to registers ;size:1
;@main IOP2bits                  Allocated to registers ;size:1
;@main OEP2bits                  Allocated to registers ;size:1
;@main PUP2bits                  Allocated to registers ;size:1
;@main PDP2bits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T0CNTbits                 Allocated to registers ;size:1
;@main T0LOADbits                Allocated to registers ;size:1
;@main T0DATAbits                Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T1CNTHbits                Allocated to registers ;size:1
;@main T1CNTLbits                Allocated to registers ;size:1
;@main T1LOADHbits               Allocated to registers ;size:1
;@main T1LOADLbits               Allocated to registers ;size:1
;@main T1DATAHbits               Allocated to registers ;size:1
;@main T1DATALbits               Allocated to registers ;size:1
;@main IICCRbits                 Allocated to registers ;size:1
;@main IICSRbits                 Allocated to registers ;size:1
;@main IICDRbits                 Allocated to registers ;size:1
;@main EECRbits                  Allocated to registers ;size:1
;@main EEMASKbits                Allocated to registers ;size:1
;@main EEARbits                  Allocated to registers ;size:1
;@main EEDRbits                  Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ADRHbits                  Allocated to registers ;size:1
;@main ADRLbits                  Allocated to registers ;size:1
;@main ADIOS0bits                Allocated to registers ;size:1
;@main ADIOS1bits                Allocated to registers ;size:1
;@main OSADJCRbits               Allocated to registers ;size:1
;@main T2CRbits                  Allocated to registers ;size:1
;@main T2CNTHbits                Allocated to registers ;size:1
;@main T2CNTLbits                Allocated to registers ;size:1
;@main T2LOADHbits               Allocated to registers ;size:1
;@main T2LOADLbits               Allocated to registers ;size:1
;@main T3CRbits                  Allocated to registers ;size:1
;@main T3CNTbits                 Allocated to registers ;size:1
;@main T3LOADbits                Allocated to registers ;size:1
;@main SCONbits                  Allocated to registers ;size:1
;@main SBUFbits                  Allocated to registers ;size:1
;@main SADDRbits                 Allocated to registers ;size:1
;@main SADENbits                 Allocated to registers ;size:1
;@main Flag1                     Allocated to registers ;size:1
;@main ABuf                      Allocated to registers ;size:1
;@main StatusBuf                 Allocated to registers ;size:1
;@main AD_Init                   Allocated to registers ;size:2
;@main Data_OSADJCR              Allocated to registers ;size:1
;@main ADH_temp                  Allocated to registers ;size:1
;@main ADL_temp                  Allocated to registers ;size:1
;@main BT_VIN_AD                 Allocated to registers ;size:2
;@main B3_VIN_AD                 Allocated to registers ;size:2
;@main B2_VIN_AD                 Allocated to registers ;size:2
;@main B1_VIN_AD                 Allocated to registers ;size:2
;@main IO_AD                     Allocated to registers ;size:2
;@main SEC_VIN_AD                Allocated to registers ;size:2
;@main NTC_AD                    Allocated to registers ;size:2
;@main BT_Single_VIN_AD          Allocated to registers ;size:2
;@main B3_Single_VIN_AD          Allocated to registers ;size:2
;@main B2_Single_VIN_AD          Allocated to registers ;size:2
;@main B1_Single_VIN_AD          Allocated to registers ;size:2
;@main BT_Ratio_VIN_AD           Allocated to registers ;size:2
;@main B3_Ratio_VIN_AD           Allocated to registers ;size:2
;@main B2_Ratio_VIN_AD           Allocated to registers ;size:2
;@main B1_Ratio_VIN_AD           Allocated to registers ;size:2
;@main EEPROM_Data_Value         Allocated to registers ;size:1
;@main ADC_Ratio_Inter_JI        Allocated to registers ;size:1
;@main LooP_JI                   Allocated to registers ;size:1
;@main Ratio_Flag1_A5            Allocated to registers ;size:1
;@main Ratio_Flag2_CA            Allocated to registers ;size:1
;@main Read_EEPROM_Temp_H        Allocated to registers ;size:1
;@main Read_EEPROM_Temp_L        Allocated to registers ;size:1
;@main INDF0                     Allocated to registers ;size:1
;@main INDF1                     Allocated to registers ;size:1
;@main INDF2                     Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main PFLAG                     Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main INTE1                     Allocated to registers ;size:1
;@main INTF1                     Allocated to registers ;size:1
;@main KBCR                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main PDP0                      Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main PDP1                      Allocated to registers ;size:1
;@main IOP2                      Allocated to registers ;size:1
;@main OEP2                      Allocated to registers ;size:1
;@main PUP2                      Allocated to registers ;size:1
;@main PDP2                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNTH                    Allocated to registers ;size:1
;@main T1CNTL                    Allocated to registers ;size:1
;@main T1LOADH                   Allocated to registers ;size:1
;@main T1LOADL                   Allocated to registers ;size:1
;@main T1DATAH                   Allocated to registers ;size:1
;@main T1DATAL                   Allocated to registers ;size:1
;@main IICCR                     Allocated to registers ;size:1
;@main IICSR                     Allocated to registers ;size:1
;@main IICDR                     Allocated to registers ;size:1
;@main EECR                      Allocated to registers ;size:1
;@main EEMASK                    Allocated to registers ;size:1
;@main EEAR                      Allocated to registers ;size:1
;@main EEDR                      Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main ADIOS0                    Allocated to registers ;size:1
;@main ADIOS1                    Allocated to registers ;size:1
;@main OSADJCR                   Allocated to registers ;size:1
;@main T2CR                      Allocated to registers ;size:1
;@main T2CNTH                    Allocated to registers ;size:1
;@main T2CNTL                    Allocated to registers ;size:1
;@main T2LOADH                   Allocated to registers ;size:1
;@main T2LOADL                   Allocated to registers ;size:1
;@main T3CR                      Allocated to registers ;size:1
;@main T3CNT                     Allocated to registers ;size:1
;@main T3LOAD                    Allocated to registers ;size:1
;@main SCON                      Allocated to registers ;size:1
;@main SBUF                      Allocated to registers ;size:1
;@main SADDR                     Allocated to registers ;size:1
;@main SADEN                     Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'EEPROM_Read'
;@EEPROM_Read Address                   Allocated to registers ;size:1
;@EEPROM_Read EEPROM_Data_Temp          Allocated to registers r0x103D ;size:1
;@end Allocation info for local variables in function 'EEPROM_Read';
;@Allocation info for local variables in function 'EEPROM_Write'
;@EEPROM_Write Data                      Allocated to registers ;size:1
;@EEPROM_Write Address                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'EEPROM_Write';
;@Allocation info for local variables in function 'LCD_write_byte'
;@LCD_write_byte command                   Allocated to registers r0x104F ;size:1
;@LCD_write_byte dt                        Allocated to registers r0x104E ;size:1
;@LCD_write_byte i                         Allocated to registers r0x104F ;size:1
;@end Allocation info for local variables in function 'LCD_write_byte';
;@Allocation info for local variables in function 'LCD_init'
;@end Allocation info for local variables in function 'LCD_init';
;@Allocation info for local variables in function 'LCD_set_XY'
;@LCD_set_XY Y                         Allocated to registers r0x1051 ;size:1
;@LCD_set_XY X                         Allocated to registers r0x1050 ;size:1
;@end Allocation info for local variables in function 'LCD_set_XY';
;@Allocation info for local variables in function 'LCD_clear'
;@LCD_clear t                         Allocated to registers r0x105E ;size:1
;@LCD_clear k                         Allocated to registers r0x105F ;size:1
;@end Allocation info for local variables in function 'LCD_clear';
;@Allocation info for local variables in function 'LCD_write_shu57'
;@LCD_write_shu57 c                         Allocated to registers r0x105B ;size:1
;@LCD_write_shu57 page                      Allocated to registers r0x105A ;size:1
;@LCD_write_shu57 row                       Allocated to registers r0x1059 ;size:1
;@LCD_write_shu57 i                         Allocated to registers r0x105A ;size:1
;@end Allocation info for local variables in function 'LCD_write_shu57';
;@Allocation info for local variables in function 'LCD_write_hanzi'
;@LCD_write_hanzi c                         Allocated to registers r0x1054 ;size:1
;@LCD_write_hanzi page                      Allocated to registers r0x1053 ;size:1
;@LCD_write_hanzi row                       Allocated to registers r0x1052 ;size:1
;@LCD_write_hanzi i                         Allocated to registers r0x1054 ;size:1
;@end Allocation info for local variables in function 'LCD_write_hanzi';
;@Allocation info for local variables in function 'ADC_Value_Ratio'
;@ADC_Value_Ratio JI_Temp                   Allocated to registers r0x103E ;size:1
;@ADC_Value_Ratio AD_Temp_H                 Allocated to registers r0x1041 ;size:1
;@ADC_Value_Ratio AD_Temp_L                 Allocated to registers r0x1040 ;size:1
;@ADC_Value_Ratio Flag1_A5                  Allocated to registers r0x103F ;size:1
;@ADC_Value_Ratio Flag2_CA                  Allocated to registers r0x1042 ;size:1
;@ADC_Value_Ratio B1_Ratio_Read_Value       Allocated to registers r0x103E r0x1043 ;size:2
;@ADC_Value_Ratio B2_Ratio_Read_Value       Allocated to registers r0x1045 r0x1044 ;size:2
;@ADC_Value_Ratio B3_Ratio_Read_Value       Allocated to registers r0x1046 r0x1047 ;size:2
;@ADC_Value_Ratio BT_Ratio_Read_Value       Allocated to registers r0x1048 r0x1049 ;size:2
;@end Allocation info for local variables in function 'ADC_Value_Ratio';
;@Allocation info for local variables in function 'All_Adc_Convert'
;@All_Adc_Convert VIN_AD_Temp1              Allocated to registers r0x1037 r0x1038 ;size:2
;@All_Adc_Convert VIN_AD_Temp2              Allocated to registers r0x1039 r0x103A ;size:2
;@end Allocation info for local variables in function 'All_Adc_Convert';
;@Allocation info for local variables in function 'AD_Init_mode'
;@end Allocation info for local variables in function 'AD_Init_mode';
;@Allocation info for local variables in function 'InitRam'
;@end Allocation info for local variables in function 'InitRam';
;@Allocation info for local variables in function 'initial'
;@end Allocation info for local variables in function 'initial';
;@Allocation info for local variables in function 'SampleRelatedChannel'
;@SampleRelatedChannel VREF                      Allocated to registers r0x102B ;size:1
;@SampleRelatedChannel channel                   Allocated to registers r0x102A ;size:1
;@SampleRelatedChannel i                         Allocated to registers r0x102A ;size:1
;@SampleRelatedChannel TempADH                   Allocated to registers r0x1033 r0x1034 ;size:2
;@SampleRelatedChannel TempADL                   Allocated to registers r0x102B r0x1032 ;size:2
;@SampleRelatedChannel middleval                 Allocated to registers r0x1030 r0x1031 ;size:2
;@SampleRelatedChannel AD_Low_Value              Allocated to registers r0x102C r0x102D ;size:2
;@SampleRelatedChannel AD_High_Value             Allocated to registers r0x102E r0x102F ;size:2
;@end Allocation info for local variables in function 'SampleRelatedChannel';
;@Allocation info for local variables in function 'Delay1mS_1M'
;@Delay1mS_1M i                         Allocated to registers ;size:2
;@Delay1mS_1M jj                        Allocated to registers r0x1029 ;size:1
;@end Allocation info for local variables in function 'Delay1mS_1M';
;@Allocation info for local variables in function 'int_isr'
;@end Allocation info for local variables in function 'int_isr';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	_main
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x8
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _int_isr	;Function start
; 0 exit points
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	953; "3S4SVoltmeter2.c"	__endasm;   
	movra _ABuf
	swapar _PFLAG
	movra _StatusBuf
	
;	.line	956; "3S4SVoltmeter2.c"	if(T2IF)//定时500MS
	JBSET	_INTF1bits,0
	GOTO	_00560_DS_
;	.line	958; "3S4SVoltmeter2.c"	T2IF=0; 	   
	BCLR	_INTF1bits,0
_00560_DS_
;	.line	967; "3S4SVoltmeter2.c"	__endasm;   
	swapar _StatusBuf
	movra _PFLAG
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_3S4SVoltmeter2	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _initial
;   _InitRam
;   _Delay1mS_1M
;   _AD_Init_mode
;   _Delay1mS_1M
;   _SampleRelatedChannel
;   _AD_Init_mode
;   _Delay1mS_1M
;   _SampleRelatedChannel
;   _ADC_Value_Ratio
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _Delay1mS_1M
;   _LCD_init
;   _LCD_clear
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _All_Adc_Convert
;   _initial
;   _InitRam
;   _Delay1mS_1M
;   _AD_Init_mode
;   _Delay1mS_1M
;   _SampleRelatedChannel
;   _AD_Init_mode
;   _Delay1mS_1M
;   _SampleRelatedChannel
;   _ADC_Value_Ratio
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _Delay1mS_1M
;   _LCD_init
;   _LCD_clear
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_shu57
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _LCD_write_hanzi
;   _All_Adc_Convert
;8 compiler assigned registers:
;   STK00
;   r0x1060
;   r0x1061
;   r0x1062
;   r0x1063
;   r0x1064
;   r0x1065
;   STK01
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	146; "3S4SVoltmeter2.c"	initial();//初始化单片机 
	CALL	_initial
;	.line	147; "3S4SVoltmeter2.c"	InitRam();//清零所有RAM
	CALL	_InitRam
;	.line	148; "3S4SVoltmeter2.c"	DisableTotalINT;//关闭总中断
	BCLR	_MCRbits,7
;	.line	149; "3S4SVoltmeter2.c"	RLED_OFF;//关红光LED
	BCLR	_IOP2bits,5
;	.line	150; "3S4SVoltmeter2.c"	GLED_ON;//开绿光LED
	BSET	_IOP0bits,5
;	.line	151; "3S4SVoltmeter2.c"	Delay1mS_1M(30);//延时时50MS  	
	MOVAI	0x1e
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
;	.line	153; "3S4SVoltmeter2.c"	AD_Init_mode();// AD修调程序，解决零点飘移！
	CALL	_AD_Init_mode
;	.line	154; "3S4SVoltmeter2.c"	OSADJEN=0;//关闭 ADC 零点偏移修调模式
	BCLR	_OSADJCRbits,7
;	.line	155; "3S4SVoltmeter2.c"	ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK
	MOVAI	0x13
	MOVRA	_ADCR1
;	.line	156; "3S4SVoltmeter2.c"	Delay1mS_1M(10);//延时时50MS  	   	   	
	MOVAI	0x0a
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
;	.line	157; "3S4SVoltmeter2.c"	AD_Init=SampleRelatedChannel(GND_channel,VREF_2V); 
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0xe0
	CALL	_SampleRelatedChannel
	MOVRA	(_AD_Init + 1)
	MOVAR	STK00
	MOVRA	_AD_Init
;	.line	158; "3S4SVoltmeter2.c"	if(AD_Init>0)
	MOVAR	_AD_Init
	ORAR	(_AD_Init + 1)
	JBCLR	PFLAG,2
	GOTO	_00106_DS_
;	.line	160; "3S4SVoltmeter2.c"	AD_Init_mode();// AD修调程序，解决零点飘移！
	CALL	_AD_Init_mode
;	.line	161; "3S4SVoltmeter2.c"	OSADJEN=0;//关闭 ADC 零点偏移修调模式
	BCLR	_OSADJCRbits,7
_00106_DS_
;	.line	164; "3S4SVoltmeter2.c"	ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK 	   	   	  
	MOVAI	0x13
	MOVRA	_ADCR1
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	167; "3S4SVoltmeter2.c"	Flag1.byte=0;//清标志寄存器
	CLRR	(_Flag1 + 0)
;	.line	172; "3S4SVoltmeter2.c"	ADC_Ratio_Inter_JI=0;
	CLRR	_ADC_Ratio_Inter_JI
;	.line	173; "3S4SVoltmeter2.c"	LooP_JI=50;
	MOVAI	0x32
	MOVRA	_LooP_JI
;	.line	174; "3S4SVoltmeter2.c"	Delay1mS_1M(100);//延时时50MS
	MOVAI	0x64
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
_00112_DS_
;	.line	175; "3S4SVoltmeter2.c"	while(LooP_JI>0)
	MOVAI	0x00
	ORAR	_LooP_JI
	JBCLR	PFLAG,2
	GOTO	_00114_DS_
;	.line	177; "3S4SVoltmeter2.c"	LooP_JI--;  
	DECR	_LooP_JI
;	.line	178; "3S4SVoltmeter2.c"	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS 
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x10
	CALL	_SampleRelatedChannel
	MOVRA	(_NTC_AD + 1)
	MOVAR	STK00
	MOVRA	_NTC_AD
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xF6A=3946), size=2
;	.line	179; "3S4SVoltmeter2.c"	if((NTC_AD>3945)&&(NTC_AD<3980))//如果NTC电阻值为300K，进入校准子程序
	MOVAI	0x0f
	RSUBAR	(_NTC_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00168_DS_
	MOVAI	0x6a
	RSUBAR	_NTC_AD
_00168_DS_
	JBSET	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xF8C=3980), size=2
	MOVAI	0x0f
	RSUBAR	(_NTC_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00169_DS_
	MOVAI	0x8c
	RSUBAR	_NTC_AD
_00169_DS_
	JBCLR	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	181; "3S4SVoltmeter2.c"	ADC_Ratio_Inter_JI++;
	INCR	_ADC_Ratio_Inter_JI
;;unsigned compare: left < lit(0x28=40), size=1
;	.line	182; "3S4SVoltmeter2.c"	if(ADC_Ratio_Inter_JI>=40)
	MOVAI	0x28
	RSUBAR	_ADC_Ratio_Inter_JI
	JBSET	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	184; "3S4SVoltmeter2.c"	ADC_Value_Ratio();//电压校准程序    
	CALL	_ADC_Value_Ratio
	GOTO	_00112_DS_
_00114_DS_
;	.line	190; "3S4SVoltmeter2.c"	Ratio_Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM读程序  
	MOVAI	0x00
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Ratio_Flag1_A5
;	.line	191; "3S4SVoltmeter2.c"	Ratio_Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM读程序 
	MOVAI	0x01
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Ratio_Flag2_CA
;	.line	192; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM读程序
	MOVAI	0x02
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Read_EEPROM_Temp_H
;	.line	193; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM读程序   	   	   	   	   	   	   	  
	MOVAI	0x03
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Read_EEPROM_Temp_L
;	.line	194; "3S4SVoltmeter2.c"	B1_Ratio_VIN_AD=Read_EEPROM_Temp_H;
	MOVAR	_Read_EEPROM_Temp_H
	MOVRA	_B1_Ratio_VIN_AD
	CLRR	(_B1_Ratio_VIN_AD + 1)
;	.line	195; "3S4SVoltmeter2.c"	B1_Ratio_VIN_AD=((B1_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
	MOVAR	_B1_Ratio_VIN_AD
	MOVRA	r0x1061
	CLRR	r0x1060
	MOVAR	_Read_EEPROM_Temp_L
	MOVRA	r0x1062
	CLRR	r0x1063
;;135	MOVAR	r0x1062
	MOVAI	0x00
	MOVRA	r0x1065
;;134	MOVAR	r0x1064
	MOVAR	r0x1062
	MOVRA	r0x1064
	ADDAR	r0x1060
	MOVRA	_B1_Ratio_VIN_AD
	MOVAR	r0x1061
	MOVRA	(_B1_Ratio_VIN_AD + 1)
	MOVAR	r0x1065
	JBCLR	PFLAG,0
	JZAR	r0x1065
	ADDRA	(_B1_Ratio_VIN_AD + 1)
;	.line	196; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM读程序
	MOVAI	0x04
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Read_EEPROM_Temp_H
;	.line	197; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM读程序   	   	   	   	   	   	   	  
	MOVAI	0x05
	CALL	_EEPROM_Read
	MOVRA	r0x1060
	MOVAR	r0x1060
	MOVRA	_EEPROM_Data_Value
	MOVAR	r0x1060
	MOVRA	_Read_EEPROM_Temp_L
;	.line	198; "3S4SVoltmeter2.c"	B2_Ratio_VIN_AD=Read_EEPROM_Temp_H;
	MOVAR	_Read_EEPROM_Temp_H
	MOVRA	_B2_Ratio_VIN_AD
	CLRR	(_B2_Ratio_VIN_AD + 1)
;	.line	199; "3S4SVoltmeter2.c"	B2_Ratio_VIN_AD=((B2_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	   	  
	MOVAR	_B2_Ratio_VIN_AD
	MOVRA	r0x1061
	CLRR	r0x1060
	MOVAR	_Read_EEPROM_Temp_L
	MOVRA	r0x1064
	MOVRA	r0x1062
	CLRR	r0x1063
;;133	MOVAR	r0x1062
	MOVAI	0x00
	MOVRA	r0x1065
	MOVAR	r0x1064
	ADDAR	r0x1060
	MOVRA	_B2_Ratio_VIN_AD
	MOVAR	r0x1061
	MOVRA	(_B2_Ratio_VIN_AD + 1)
	MOVAR	r0x1065
	JBCLR	PFLAG,0
	JZAR	r0x1065
	ADDRA	(_B2_Ratio_VIN_AD + 1)
;	.line	200; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM读程序
	MOVAI	0x06
	CALL	_EEPROM_Read
	MOVRA	_EEPROM_Data_Value
	MOVRA	_Read_EEPROM_Temp_H
	MOVRA	r0x1060
;;166	MOVAR	r0x1060
;;168	MOVAR	r0x1060
;	.line	201; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM读程序   	   	   	   	   	   	   	  
	MOVAI	0x07
	CALL	_EEPROM_Read
	MOVRA	_EEPROM_Data_Value
	MOVRA	_Read_EEPROM_Temp_L
	MOVRA	r0x1060
;;160	MOVAR	r0x1060
;;164	MOVAR	r0x1060
;	.line	202; "3S4SVoltmeter2.c"	B3_Ratio_VIN_AD=Read_EEPROM_Temp_H;
	MOVAR	_Read_EEPROM_Temp_H
	MOVRA	_B3_Ratio_VIN_AD
	CLRR	(_B3_Ratio_VIN_AD + 1)
;	.line	203; "3S4SVoltmeter2.c"	B3_Ratio_VIN_AD=((B3_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
	MOVAR	_B3_Ratio_VIN_AD
	MOVRA	r0x1061
	CLRR	r0x1060
	MOVAR	_Read_EEPROM_Temp_L
	MOVRA	r0x1062
	CLRR	r0x1063
;;103	MOVAR	r0x1062
	MOVAI	0x00
	MOVRA	r0x1065
;;102	MOVAR	r0x1064
	MOVAR	r0x1062
	MOVRA	r0x1064
	ADDAR	r0x1060
	MOVRA	_B3_Ratio_VIN_AD
	MOVAR	r0x1061
	MOVRA	(_B3_Ratio_VIN_AD + 1)
	MOVAR	r0x1065
	JBCLR	PFLAG,0
	JZAR	r0x1065
	ADDRA	(_B3_Ratio_VIN_AD + 1)
;	.line	204; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM读程序
	MOVAI	0x08
	CALL	_EEPROM_Read
	MOVRA	_EEPROM_Data_Value
	MOVRA	_Read_EEPROM_Temp_H
	MOVRA	r0x1060
;;146	MOVAR	r0x1060
;;154	MOVAR	r0x1060
;	.line	205; "3S4SVoltmeter2.c"	Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM读程序   	   	   	   	   	   	   	  
	MOVAI	0x09
	CALL	_EEPROM_Read
	MOVRA	_EEPROM_Data_Value
	MOVRA	_Read_EEPROM_Temp_L
	MOVRA	r0x1060
;;99	MOVAR	r0x1060
;;131	MOVAR	r0x1060
;	.line	206; "3S4SVoltmeter2.c"	BT_Ratio_VIN_AD=Read_EEPROM_Temp_H;
	MOVAR	_Read_EEPROM_Temp_H
	MOVRA	_BT_Ratio_VIN_AD
	CLRR	(_BT_Ratio_VIN_AD + 1)
;	.line	207; "3S4SVoltmeter2.c"	BT_Ratio_VIN_AD=((BT_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	
	MOVAR	_BT_Ratio_VIN_AD
	MOVRA	r0x1061
	CLRR	r0x1060
	MOVAR	_Read_EEPROM_Temp_L
	MOVRA	r0x1064
	MOVRA	r0x1062
	CLRR	r0x1063
;;101	MOVAR	r0x1062
	MOVAI	0x00
	MOVRA	r0x1065
	MOVAR	r0x1064
	ADDAR	r0x1060
	MOVRA	_BT_Ratio_VIN_AD
	MOVAR	r0x1061
	MOVRA	(_BT_Ratio_VIN_AD + 1)
	MOVAR	r0x1065
	JBCLR	PFLAG,0
	JZAR	r0x1065
	ADDRA	(_BT_Ratio_VIN_AD + 1)
;	.line	208; "3S4SVoltmeter2.c"	if((Ratio_Flag1_A5!=0xA5)||(Ratio_Flag2_CA!=0xCA)||(B1_Ratio_VIN_AD<3350)||(B1_Ratio_VIN_AD>3530)||(B2_Ratio_VIN_AD<3350)||(B2_Ratio_VIN_AD>3530)||(B3_Ratio_VIN_AD<3350)||(B3_Ratio_VIN_AD>3530)||(BT_Ratio_VIN_AD<3350)||(BT_Ratio_VIN_AD>3530))//
	MOVAR	_Ratio_Flag1_A5
	XORAI	0xa5
	JBSET	PFLAG,2
	GOTO	_00118_DS_
	MOVAR	_Ratio_Flag2_CA
	XORAI	0xca
	JBSET	PFLAG,2
	GOTO	_00118_DS_
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B1_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00171_DS_
	MOVAI	0x16
	RSUBAR	_B1_Ratio_VIN_AD
_00171_DS_
	JBSET	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B1_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00172_DS_
	MOVAI	0xcb
	RSUBAR	_B1_Ratio_VIN_AD
_00172_DS_
	JBCLR	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B2_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00173_DS_
	MOVAI	0x16
	RSUBAR	_B2_Ratio_VIN_AD
_00173_DS_
	JBSET	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B2_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00174_DS_
	MOVAI	0xcb
	RSUBAR	_B2_Ratio_VIN_AD
_00174_DS_
	JBCLR	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B3_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00175_DS_
	MOVAI	0x16
	RSUBAR	_B3_Ratio_VIN_AD
_00175_DS_
	JBSET	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B3_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00176_DS_
	MOVAI	0xcb
	RSUBAR	_B3_Ratio_VIN_AD
_00176_DS_
	JBCLR	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00177_DS_
	MOVAI	0x16
	RSUBAR	_BT_Ratio_VIN_AD
_00177_DS_
	JBSET	PFLAG,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00178_DS_
	MOVAI	0xcb
	RSUBAR	_BT_Ratio_VIN_AD
_00178_DS_
	JBSET	PFLAG,0
	GOTO	_00119_DS_
;;genSkipc:3195: created from rifx:00DE608C
_00118_DS_
;	.line	210; "3S4SVoltmeter2.c"	RLED_ON;//红光LED亮
	BSET	_IOP2bits,5
;	.line	211; "3S4SVoltmeter2.c"	GLED_ON;//绿光LED亮 	   	   	   	  
	BSET	_IOP0bits,5
_00116_DS_
;	.line	214; "3S4SVoltmeter2.c"	Delay1mS_1M(500);//延时时250Ms  	
	MOVAI	0xf4
	MOVRA	STK00
	MOVAI	0x01
	CALL	_Delay1mS_1M
;	.line	215; "3S4SVoltmeter2.c"	GLED=!GLED;
	CLRR	r0x1060
	JBCLR	_IOP0bits,5
	INCR	r0x1060
	MOVAR	r0x1060
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1060
	MOVRA	r0x1061
;;132	MOVAR	r0x1061
	RRAR	r0x1060
	JBSET	PFLAG,0
	BCLR	_IOP0bits,5
	JBCLR	PFLAG,0
	BSET	_IOP0bits,5
;	.line	216; "3S4SVoltmeter2.c"	RLED=!RLED;
	CLRR	r0x1060
	JBCLR	_IOP2bits,5
	INCR	r0x1060
	MOVAR	r0x1060
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1060
	MOVRA	r0x1061
;;100	MOVAR	r0x1061
	RRAR	r0x1060
	JBSET	PFLAG,0
	BCLR	_IOP2bits,5
	JBCLR	PFLAG,0
	BSET	_IOP2bits,5
	GOTO	_00116_DS_
_00119_DS_
;	.line	220; "3S4SVoltmeter2.c"	LCD_init();  //初始化LCD模块 
	CALL	_LCD_init
;	.line	221; "3S4SVoltmeter2.c"	LCD_clear();
	CALL	_LCD_clear
;	.line	222; "3S4SVoltmeter2.c"	LCD_write_shu57(0,0,13);//B      	(列，页，字符)   	
	MOVAI	0x0d
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_shu57
;	.line	223; "3S4SVoltmeter2.c"	LCD_write_shu57(1,0,14);//T          	(列，页，字符)   	
	MOVAI	0x0e
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x01
	CALL	_LCD_write_shu57
;	.line	224; "3S4SVoltmeter2.c"	LCD_write_shu57(2,0,11);//: (列，页，字符) 	   	
	MOVAI	0x0b
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x02
	CALL	_LCD_write_shu57
;	.line	225; "3S4SVoltmeter2.c"	LCD_write_shu57(3,0,4);//0           	(列，页，字符)
	MOVAI	0x04
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x03
	CALL	_LCD_write_shu57
;	.line	226; "3S4SVoltmeter2.c"	LCD_write_shu57(4,0,10);//.          	(列，页，字符)
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x04
	CALL	_LCD_write_shu57
;	.line	227; "3S4SVoltmeter2.c"	LCD_write_shu57(5,0,2);//0           	(列，页，字符)
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x05
	CALL	_LCD_write_shu57
;	.line	228; "3S4SVoltmeter2.c"	LCD_write_shu57(6,0,0);//0           	(列，页，字符)   	
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x06
	CALL	_LCD_write_shu57
;	.line	229; "3S4SVoltmeter2.c"	LCD_write_shu57(7,0,15);//V          	(列，页，字符)   	   	
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x07
	CALL	_LCD_write_shu57
;	.line	230; "3S4SVoltmeter2.c"	LCD_write_shu57(8,0,1);//0           	(列，页，字符)
	MOVAI	0x01
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x08
	CALL	_LCD_write_shu57
;	.line	231; "3S4SVoltmeter2.c"	LCD_write_shu57(9,0,6);//0           	(列，页，字符)
	MOVAI	0x06
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x09
	CALL	_LCD_write_shu57
;	.line	232; "3S4SVoltmeter2.c"	LCD_write_shu57(10,0,10);//.         	(列，页，字符)
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x0a
	CALL	_LCD_write_shu57
;	.line	233; "3S4SVoltmeter2.c"	LCD_write_shu57(11,0,8);//0          	(列，页，字符)
	MOVAI	0x08
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x0b
	CALL	_LCD_write_shu57
;	.line	234; "3S4SVoltmeter2.c"	LCD_write_shu57(12,0,0);//0          	(列，页，字符)   	
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x0c
	CALL	_LCD_write_shu57
;	.line	235; "3S4SVoltmeter2.c"	LCD_write_shu57(13,0,15);//V         	(列，页，字符)   	
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x0d
	CALL	_LCD_write_shu57
;	.line	237; "3S4SVoltmeter2.c"	LCD_write_shu57(0,1,13);//B
	MOVAI	0x0d
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_shu57
;	.line	238; "3S4SVoltmeter2.c"	LCD_write_shu57(1,1,3);//3
	MOVAI	0x03
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x01
	CALL	_LCD_write_shu57
;	.line	239; "3S4SVoltmeter2.c"	LCD_write_shu57(2,1,11);//:
	MOVAI	0x0b
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x02
	CALL	_LCD_write_shu57
;	.line	240; "3S4SVoltmeter2.c"	LCD_write_shu57(3,1,4);//0
	MOVAI	0x04
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x03
	CALL	_LCD_write_shu57
;	.line	241; "3S4SVoltmeter2.c"	LCD_write_shu57(4,1,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x04
	CALL	_LCD_write_shu57
;	.line	242; "3S4SVoltmeter2.c"	LCD_write_shu57(5,1,2);//0
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x05
	CALL	_LCD_write_shu57
;	.line	243; "3S4SVoltmeter2.c"	LCD_write_shu57(6,1,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x06
	CALL	_LCD_write_shu57
;	.line	244; "3S4SVoltmeter2.c"	LCD_write_shu57(7,1,15);//V
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x07
	CALL	_LCD_write_shu57
;	.line	245; "3S4SVoltmeter2.c"	LCD_write_shu57(8,1,1);//0
	MOVAI	0x01
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x08
	CALL	_LCD_write_shu57
;	.line	246; "3S4SVoltmeter2.c"	LCD_write_shu57(9,1,2);//0
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x09
	CALL	_LCD_write_shu57
;	.line	247; "3S4SVoltmeter2.c"	LCD_write_shu57(10,1,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x0a
	CALL	_LCD_write_shu57
;	.line	248; "3S4SVoltmeter2.c"	LCD_write_shu57(11,1,6);//0
	MOVAI	0x06
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x0b
	CALL	_LCD_write_shu57
;	.line	249; "3S4SVoltmeter2.c"	LCD_write_shu57(12,1,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x0c
	CALL	_LCD_write_shu57
;	.line	250; "3S4SVoltmeter2.c"	LCD_write_shu57(13,1,15);//V
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x0d
	CALL	_LCD_write_shu57
;	.line	252; "3S4SVoltmeter2.c"	LCD_write_shu57(0,2,13);//B
	MOVAI	0x0d
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_shu57
;	.line	253; "3S4SVoltmeter2.c"	LCD_write_shu57(1,2,2);//2
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x01
	CALL	_LCD_write_shu57
;	.line	254; "3S4SVoltmeter2.c"	LCD_write_shu57(2,2,11);//:
	MOVAI	0x0b
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x02
	CALL	_LCD_write_shu57
;	.line	255; "3S4SVoltmeter2.c"	LCD_write_shu57(3,2,4);//0
	MOVAI	0x04
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x03
	CALL	_LCD_write_shu57
;	.line	256; "3S4SVoltmeter2.c"	LCD_write_shu57(4,2,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x04
	CALL	_LCD_write_shu57
;	.line	257; "3S4SVoltmeter2.c"	LCD_write_shu57(5,2,2);//0
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x05
	CALL	_LCD_write_shu57
;	.line	258; "3S4SVoltmeter2.c"	LCD_write_shu57(6,2,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x06
	CALL	_LCD_write_shu57
;	.line	259; "3S4SVoltmeter2.c"	LCD_write_shu57(7,2,15);//V
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x07
	CALL	_LCD_write_shu57
;	.line	260; "3S4SVoltmeter2.c"	LCD_write_shu57(8,2,12);//' '
	MOVAI	0x0c
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x08
	CALL	_LCD_write_shu57
;	.line	261; "3S4SVoltmeter2.c"	LCD_write_shu57(9,2,8);//0
	MOVAI	0x08
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x09
	CALL	_LCD_write_shu57
;	.line	262; "3S4SVoltmeter2.c"	LCD_write_shu57(10,2,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x0a
	CALL	_LCD_write_shu57
;	.line	263; "3S4SVoltmeter2.c"	LCD_write_shu57(11,2,4);//0
	MOVAI	0x04
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x0b
	CALL	_LCD_write_shu57
;	.line	264; "3S4SVoltmeter2.c"	LCD_write_shu57(12,2,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x0c
	CALL	_LCD_write_shu57
;	.line	265; "3S4SVoltmeter2.c"	LCD_write_shu57(13,2,15);//V
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x0d
	CALL	_LCD_write_shu57
;	.line	267; "3S4SVoltmeter2.c"	LCD_write_shu57(0,3,13);//B
	MOVAI	0x0d
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_shu57
;	.line	268; "3S4SVoltmeter2.c"	LCD_write_shu57(1,3,1);//1
	MOVAI	0x01
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x01
	CALL	_LCD_write_shu57
;	.line	269; "3S4SVoltmeter2.c"	LCD_write_shu57(2,3,11);//:
	MOVAI	0x0b
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x02
	CALL	_LCD_write_shu57
;	.line	270; "3S4SVoltmeter2.c"	LCD_write_shu57(3,3,4);//0
	MOVAI	0x04
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x03
	CALL	_LCD_write_shu57
;	.line	271; "3S4SVoltmeter2.c"	LCD_write_shu57(4,3,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x04
	CALL	_LCD_write_shu57
;	.line	272; "3S4SVoltmeter2.c"	LCD_write_shu57(5,3,2);//0
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x05
	CALL	_LCD_write_shu57
;	.line	273; "3S4SVoltmeter2.c"	LCD_write_shu57(6,3,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x06
	CALL	_LCD_write_shu57
;	.line	274; "3S4SVoltmeter2.c"	LCD_write_shu57(7,3,15);//V
	MOVAI	0x0f
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x07
	CALL	_LCD_write_shu57
;	.line	275; "3S4SVoltmeter2.c"	LCD_write_shu57(8,3,12);//' '
	MOVAI	0x0c
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x08
	CALL	_LCD_write_shu57
;	.line	276; "3S4SVoltmeter2.c"	LCD_write_shu57(9,3,2);//0
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x09
	CALL	_LCD_write_shu57
;	.line	277; "3S4SVoltmeter2.c"	LCD_write_shu57(10,3,5);//0
	MOVAI	0x05
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x0a
	CALL	_LCD_write_shu57
;	.line	278; "3S4SVoltmeter2.c"	LCD_write_shu57(11,3,10);//.
	MOVAI	0x0a
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x0b
	CALL	_LCD_write_shu57
;	.line	279; "3S4SVoltmeter2.c"	LCD_write_shu57(12,3,0);//0
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x0c
	CALL	_LCD_write_shu57
;	.line	280; "3S4SVoltmeter2.c"	LCD_write_shu57(13,3,16);//K
	MOVAI	0x10
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x0d
	CALL	_LCD_write_shu57
;	.line	281; "3S4SVoltmeter2.c"	LCD_write_hanzi(0,4,0);//金
	MOVAI	0x00
	MOVRA	STK01
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_hanzi
;	.line	282; "3S4SVoltmeter2.c"	LCD_write_hanzi(1,4,1);//华
	MOVAI	0x01
	MOVRA	STK01
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x01
	CALL	_LCD_write_hanzi
;	.line	283; "3S4SVoltmeter2.c"	LCD_write_hanzi(2,4,2);//捷
	MOVAI	0x02
	MOVRA	STK01
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x02
	CALL	_LCD_write_hanzi
;	.line	284; "3S4SVoltmeter2.c"	LCD_write_hanzi(3,4,3);//安
	MOVAI	0x03
	MOVRA	STK01
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x03
	CALL	_LCD_write_hanzi
_00130_DS_
;	.line	298; "3S4SVoltmeter2.c"	All_Adc_Convert(); //各个通道AD转换
	CALL	_All_Adc_Convert
	GOTO	_00130_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Delay1mS_1M	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1027
;   STK00
;   r0x1028
;   r0x1029
;; Starting pCode block
_Delay1mS_1M	;Function start
; 2 exit points
;	.line	932; "3S4SVoltmeter2.c"	void Delay1mS_1M(uint i)
	MOVRA	r0x1027
	MOVAR	STK00
	MOVRA	r0x1028
_00550_DS_
;	.line	935; "3S4SVoltmeter2.c"	for(;i>0;i--)
	MOVAR	r0x1028
	ORAR	r0x1027
	JBCLR	PFLAG,2
	GOTO	_00554_DS_
;	.line	937; "3S4SVoltmeter2.c"	for(jj=122;jj>0;jj--)
	MOVAI	0x7a
	MOVRA	r0x1029
_00546_DS_
	MOVAI	0x00
	ORAR	r0x1029
	JBCLR	PFLAG,2
	GOTO	_00549_DS_
;	.line	939; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	937; "3S4SVoltmeter2.c"	for(jj=122;jj>0;jj--)
	DECR	r0x1029
	GOTO	_00546_DS_
_00549_DS_
;	.line	941; "3S4SVoltmeter2.c"	ClrWdt();         	       	//要加上清WDT的指令
	clrwdt
;	.line	935; "3S4SVoltmeter2.c"	for(;i>0;i--)
	MOVAI	0xff
	ADDRA	r0x1028
	JBSET	PFLAG,0
	DECR	r0x1027
	GOTO	_00550_DS_
_00554_DS_
	RETURN	
; exit point of _Delay1mS_1M

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SampleRelatedChannel	;Function start
; 2 exit points
;has an exit
;14 compiler assigned registers:
;   r0x102A
;   STK00
;   r0x102B
;   r0x102C
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;   r0x1032
;   r0x1033
;   r0x1034
;   r0x1035
;   r0x1036
;; Starting pCode block
_SampleRelatedChannel	;Function start
; 2 exit points
;	.line	888; "3S4SVoltmeter2.c"	uint  SampleRelatedChannel(uchar channel,uchar VREF)//AD转换
	MOVRA	r0x102A
	MOVAR	STK00
	MOVRA	r0x102B
;	.line	892; "3S4SVoltmeter2.c"	AD_Low_Value=0;
	CLRR	r0x102C
	CLRR	r0x102D
;	.line	893; "3S4SVoltmeter2.c"	AD_High_Value=0;
	CLRR	r0x102E
	CLRR	r0x102F
;	.line	894; "3S4SVoltmeter2.c"	middleval=0;               
	CLRR	r0x1030
	CLRR	r0x1031
;	.line	895; "3S4SVoltmeter2.c"	ADCR0=channel+VREF+0x03;//设定转换通道
	MOVAR	r0x102B
	ADDRA	r0x102A
	MOVAI	0x03
	ADDAR	r0x102A
	MOVRA	_ADCR0
;	.line	896; "3S4SVoltmeter2.c"	for(i=4;i>0;i--)//4次转换数据丢弃，为了稳定通道电压和参考电压
	MOVAI	0x04
	MOVRA	r0x102A
_00502_DS_
	MOVAI	0x00
	ORAR	r0x102A
	JBCLR	PFLAG,2
	GOTO	_00526_DS_
;	.line	898; "3S4SVoltmeter2.c"	ADEOC=0;//启动AD转换
	BCLR	_ADCR0bits,1
_00488_DS_
;	.line	899; "3S4SVoltmeter2.c"	while(ADEOC==0);//等待AD转换完成
	JBSET	_ADCR0bits,1
	GOTO	_00488_DS_
;	.line	900; "3S4SVoltmeter2.c"	ADIF=0;//清除AD转换中断标志位     
	BCLR	_INTFbits,6
;	.line	896; "3S4SVoltmeter2.c"	for(i=4;i>0;i--)//4次转换数据丢弃，为了稳定通道电压和参考电压
	DECR	r0x102A
	GOTO	_00502_DS_
_00526_DS_
;	.line	902; "3S4SVoltmeter2.c"	for(i=10;i>0;i--)//10次正式转换，去掉最高和最低转换数据累加取平均值
	MOVAI	0x0a
	MOVRA	r0x102A
_00506_DS_
	MOVAI	0x00
	ORAR	r0x102A
	JBCLR	PFLAG,2
	GOTO	_00509_DS_
;	.line	904; "3S4SVoltmeter2.c"	ADEOC=0;//启动AD转换
	BCLR	_ADCR0bits,1
_00491_DS_
;	.line	905; "3S4SVoltmeter2.c"	while(ADEOC==0);//等待AD转换完成
	JBSET	_ADCR0bits,1
	GOTO	_00491_DS_
;	.line	906; "3S4SVoltmeter2.c"	ADIF=0;//清除AD转换中断标志位
	BCLR	_INTFbits,6
;	.line	907; "3S4SVoltmeter2.c"	TempADL=ADRL;//转换值只有低4位有效。
	MOVAR	_ADRL
	MOVRA	r0x102B
	CLRR	r0x1032
;	.line	908; "3S4SVoltmeter2.c"	TempADL&=0x0F;//转换值只有低4位有效
	MOVAI	0x0f
	ANDRA	r0x102B
	CLRR	r0x1032
;	.line	909; "3S4SVoltmeter2.c"	TempADH=ADRH;
	MOVAR	_ADRH
	MOVRA	r0x1033
	CLRR	r0x1034
;	.line	910; "3S4SVoltmeter2.c"	TempADH=(TempADH<<4)+TempADL;//AD转换数据12位组合到TempADH中
	SWAPAR	r0x1034
	ANDAI	0xf0
	MOVRA	r0x1035
	SWAPAR	r0x1033
	MOVRA	r0x1036
	ANDAI	0x0f
	ORRA	r0x1035
	XORRA	r0x1036
	MOVAR	r0x102B
	ADDAR	r0x1036
	MOVRA	r0x1033
	MOVAR	r0x1035
	MOVRA	r0x1034
	MOVAI	0x00
	JBCLR	PFLAG,0
	JZAR	r0x1032
	ADDRA	r0x1034
;	.line	911; "3S4SVoltmeter2.c"	if(i==10)
	MOVAR	r0x102A
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00500_DS_
;	.line	913; "3S4SVoltmeter2.c"	AD_High_Value=TempADH;
	MOVAR	r0x1033
	MOVRA	r0x102E
	MOVAR	r0x1034
	MOVRA	r0x102F
;	.line	914; "3S4SVoltmeter2.c"	AD_Low_Value=TempADH;
	MOVAR	r0x1033
	MOVRA	r0x102C
	MOVAR	r0x1034
	MOVRA	r0x102D
	GOTO	_00501_DS_
_00500_DS_
;	.line	918; "3S4SVoltmeter2.c"	if(TempADH>AD_High_Value)
	MOVAR	r0x1034
	RSUBAR	r0x102F
	JBSET	PFLAG,2
	GOTO	_00540_DS_
	MOVAR	r0x1033
	RSUBAR	r0x102E
_00540_DS_
	JBCLR	PFLAG,0
	GOTO	_00497_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	919; "3S4SVoltmeter2.c"	{AD_High_Value=TempADH;}
	MOVAR	r0x1033
	MOVRA	r0x102E
	MOVAR	r0x1034
	MOVRA	r0x102F
	GOTO	_00501_DS_
_00497_DS_
;	.line	920; "3S4SVoltmeter2.c"	else if(TempADH<AD_Low_Value)
	MOVAR	r0x102D
	RSUBAR	r0x1034
	JBSET	PFLAG,2
	GOTO	_00541_DS_
	MOVAR	r0x102C
	RSUBAR	r0x1033
_00541_DS_
	JBCLR	PFLAG,0
	GOTO	_00501_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	921; "3S4SVoltmeter2.c"	{AD_Low_Value=TempADH;}            
	MOVAR	r0x1033
	MOVRA	r0x102C
	MOVAR	r0x1034
	MOVRA	r0x102D
_00501_DS_
;	.line	923; "3S4SVoltmeter2.c"	middleval+=TempADH;//AD数据在middleval中累加
	MOVAR	r0x1033
	ADDRA	r0x1030
	MOVAR	r0x1034
	JBCLR	PFLAG,0
	JZAR	r0x1034
	ADDRA	r0x1031
;	.line	924; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗
	clrwdt
;	.line	902; "3S4SVoltmeter2.c"	for(i=10;i>0;i--)//10次正式转换，去掉最高和最低转换数据累加取平均值
	DECR	r0x102A
	GOTO	_00506_DS_
_00509_DS_
;	.line	926; "3S4SVoltmeter2.c"	middleval=(middleval-AD_High_Value-AD_Low_Value)>>3;                  	         
	MOVAR	r0x102E
	RSUBAR	r0x1030
	MOVRA	r0x102E
	MOVAR	r0x102F
	JBSET	PFLAG,0
	INCAR	r0x102F
	RSUBAR	r0x1031
	MOVRA	r0x102F
	MOVAR	r0x102C
	RSUBAR	r0x102E
	MOVRA	r0x102C
	MOVAR	r0x102D
	JBSET	PFLAG,0
	INCAR	r0x102D
	RSUBAR	r0x102F
	MOVRA	r0x102D
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=0, offr=0
	BCLR	PFLAG,0
	RRAR	r0x102D
	MOVRA	r0x1031
	RRAR	r0x102C
	MOVRA	r0x1030
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	r0x1031
	RRR	r0x1030
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	r0x1031
	RRR	r0x1030
;	.line	927; "3S4SVoltmeter2.c"	return ((uint)middleval);
	MOVAR	r0x1030
	MOVRA	STK00
	MOVAR	r0x1031
	RETURN	
; exit point of _SampleRelatedChannel

;***
;  pBlock Stats: dbName = C
;***
;entry:  _initial	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_initial	;Function start
; 2 exit points
;	.line	795; "3S4SVoltmeter2.c"	CLKS=0;//高速时钟作为系统时钟
	BCLR	_OSCMbits,2
;	.line	796; "3S4SVoltmeter2.c"	LFEN=1;//低频时钟休眠持续工作.
	BSET	_OSCMbits,1
;	.line	797; "3S4SVoltmeter2.c"	HFEN=1;//高频时钟休眠持续工作。
	BSET	_OSCMbits,0
;	.line	800; "3S4SVoltmeter2.c"	IOP0=0x00;//上电开绿光和关闭电压检测开关
	CLRR	_IOP0
;	.line	801; "3S4SVoltmeter2.c"	IOP1=0x00;//pwm输出高电平输出电压7.8V
	CLRR	_IOP1
;	.line	802; "3S4SVoltmeter2.c"	IOP2=0x00;//所有IO为低
	CLRR	_IOP2
;	.line	803; "3S4SVoltmeter2.c"	OEP0=0xFF;//P0口方向寄存器，0:INPUT,1:OUPUT;P03做输入,其余包括不使用的IO做输出
	MOVAI	0xff
	MOVRA	_OEP0
;	.line	804; "3S4SVoltmeter2.c"	OEP1=0xF0;//P1口方向寄存器，0:INPUT,1:OUPUT;P10,P11,P12,P13做输入,其余包括不使用的IO做输出
	MOVAI	0xf0
	MOVRA	_OEP1
;	.line	805; "3S4SVoltmeter2.c"	OEP2=0x3C;//P2口方向寄存器，0:INPUT,1:OUPUT;P20,P21做输入,其余包括不使用的IO做输出
	MOVAI	0x3c
	MOVRA	_OEP2
;	.line	806; "3S4SVoltmeter2.c"	PUP0=0x00;//P0上拉寄存器，0:disenable,1:enable,P01,P02,P05,P06,P07=ON
	CLRR	_PUP0
;	.line	807; "3S4SVoltmeter2.c"	PUP1=0x00;//P1上拉寄存器，0:disenable,1:enable,P16,P15,P11,P10=ON
	CLRR	_PUP1
;	.line	808; "3S4SVoltmeter2.c"	PUP2=0x00;//P2上拉寄存器，0:disenable,1:enable,P25,P24,P23,P22=ON
	CLRR	_PUP2
;	.line	809; "3S4SVoltmeter2.c"	PDP0=0x00;//P0下拉寄存器，0:disenable,1:enable
	CLRR	_PDP0
;	.line	810; "3S4SVoltmeter2.c"	PDP1=0x00;//P1下拉寄存器，0:disenable,1:enable
	CLRR	_PDP1
;	.line	811; "3S4SVoltmeter2.c"	PDP2=0x00;//P2下拉寄存器，0:disenable,1:enable
	CLRR	_PDP2
;	.line	814; "3S4SVoltmeter2.c"	MCR=0x00;//总中断全能位，看门狗标志位，低功耗休眠模式标志位，外部中断int0,int1触发信号设置00:上升，01:下降,1X:电平变化触发
	CLRR	_MCR
;	.line	815; "3S4SVoltmeter2.c"	INTE=0x00;//-,ADIE,-,T2IE,INT1IE,INT0IE,T1IE,T0IE,全部中断关闭
	CLRR	_INTE
;	.line	816; "3S4SVoltmeter2.c"	INTF=0x00;//-,ADIF,-,T2IF,INT1IF,INT0IF,T1IF,T0IF,清除全部中断标志
	CLRR	_INTF
;	.line	817; "3S4SVoltmeter2.c"	INTE1=0x00;
	CLRR	_INTE1
;	.line	818; "3S4SVoltmeter2.c"	INTF1=0x00;
	CLRR	_INTF1
;	.line	819; "3S4SVoltmeter2.c"	KBCR=0x00;//关闭所有键盘中断
	CLRR	_KBCR
;	.line	824; "3S4SVoltmeter2.c"	ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK
	MOVAI	0x13
	MOVRA	_ADCR1
;	.line	825; "3S4SVoltmeter2.c"	ADIOS0=0x3E;//P0口模拟数字口切换，0:数字,1:模拟P20/AN1，P10/AN2，P11/AN3，P12/AN4，P13/AN5为模拟输入
	MOVAI	0x3e
	MOVRA	_ADIOS0
;	.line	826; "3S4SVoltmeter2.c"	ADIOS1=0x00;//P1,P2口模拟数字口切换，0:数字,1:模拟,P03/AN13做模拟输入
	CLRR	_ADIOS1
;	.line	828; "3S4SVoltmeter2.c"	OSADJEN=0;//关闭0点漂移修补  
	BCLR	_OSADJCRbits,7
;	.line	829; "3S4SVoltmeter2.c"	ADEN=1;//使能AD模块
	BSET	_ADCR0bits,0
;	.line	865; "3S4SVoltmeter2.c"	IICEN=0;//关闭IIC
	BCLR	_IICCRbits,7
	RETURN	
; exit point of _initial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitRam	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitRam	;Function start
; 2 exit points
;	.line	786; "3S4SVoltmeter2.c"	__endasm;
	movai 0x01
	movra FSR1
	movai 0x7F
	movra FSR0
	clrr INDF2
	djzr FSR0
	goto $-2
	clrr INDF2
	movai 0xFF
	movra FSR0
	clrr INDF0
	djzr FSR0
	goto $-2
	clrr INDF0
	
	RETURN	
; exit point of _InitRam

;***
;  pBlock Stats: dbName = C
;***
;entry:  _AD_Init_mode	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_AD_Init_mode	;Function start
; 2 exit points
;	.line	712; "3S4SVoltmeter2.c"	ADCR0=0xe0;//2V参考电压 通道GND
	MOVAI	0xe0
	MOVRA	_ADCR0
;	.line	713; "3S4SVoltmeter2.c"	OSADJEN=1;//使能 ADC 零点偏移修调模式
	BSET	_OSADJCRbits,7
;	.line	714; "3S4SVoltmeter2.c"	ADCR1=0x33;//FHIRC/64,15个ADCLK
	MOVAI	0x33
	MOVRA	_ADCR1
;	.line	715; "3S4SVoltmeter2.c"	OSADJCR&=0xc0;//修调值从零开始，负向修调0，低6位全为0   	 
	MOVAI	0xc0
	ANDRA	_OSADJCR
;	.line	716; "3S4SVoltmeter2.c"	ADEN=1;
	BSET	_ADCR0bits,0
;	.line	717; "3S4SVoltmeter2.c"	ADEOC=0;
	BCLR	_ADCR0bits,1
_00444_DS_
;	.line	718; "3S4SVoltmeter2.c"	while(ADEOC==0);//等待转换结束               	   	   	
	JBSET	_ADCR0bits,1
	GOTO	_00444_DS_
;	.line	719; "3S4SVoltmeter2.c"	ADH_temp=ADRH;
	MOVAR	_ADRH
	MOVRA	_ADH_temp
;	.line	720; "3S4SVoltmeter2.c"	ADL_temp=ADRL; 	   	   	   	 
	MOVAR	_ADRL
	MOVRA	_ADL_temp
;	.line	721; "3S4SVoltmeter2.c"	if((ADH_temp==0)&&(ADL_temp==0))//如果转换结果为0
	MOVAI	0x00
	ORAR	_ADH_temp
	JBSET	PFLAG,2
	GOTO	_00472_DS_
	MOVAI	0x00
	ORAR	_ADL_temp
	JBSET	PFLAG,2
	GOTO	_00472_DS_
;	.line	723; "3S4SVoltmeter2.c"	OSADJCR|=0x3f;//正向修调最大值
	MOVAI	0x3f
	ORRA	_OSADJCR
;	.line	724; "3S4SVoltmeter2.c"	Data_OSADJCR=OSADJCR&0x1f;//保存正向修调最大值变量
	MOVAI	0x1f
	ANDAR	_OSADJCR
	MOVRA	_Data_OSADJCR
_00457_DS_
;	.line	727; "3S4SVoltmeter2.c"	if(Data_OSADJCR==0x00) {return;}
	MOVAI	0x00
	ORAR	_Data_OSADJCR
	JBSET	PFLAG,2
	GOTO	_00454_DS_
	GOTO	_00475_DS_
_00454_DS_
;	.line	730; "3S4SVoltmeter2.c"	ADEOC=0;
	BCLR	_ADCR0bits,1
_00447_DS_
;	.line	731; "3S4SVoltmeter2.c"	while(ADEOC==0);
	JBSET	_ADCR0bits,1
	GOTO	_00447_DS_
;	.line	733; "3S4SVoltmeter2.c"	ADH_temp=ADRH;
	MOVAR	_ADRH
	MOVRA	_ADH_temp
;	.line	734; "3S4SVoltmeter2.c"	ADL_temp=ADRL;
	MOVAR	_ADRL
	MOVRA	_ADL_temp
;	.line	735; "3S4SVoltmeter2.c"	if((ADH_temp==0)&&(ADL_temp==0)){return;}
	MOVAI	0x00
	ORAR	_ADH_temp
	JBSET	PFLAG,2
	GOTO	_00455_DS_
	MOVAI	0x00
	ORAR	_ADL_temp
	JBSET	PFLAG,2
	GOTO	_00455_DS_
	GOTO	_00475_DS_
_00455_DS_
;	.line	738; "3S4SVoltmeter2.c"	OSADJCR--;
	DECR	_OSADJCR
;	.line	739; "3S4SVoltmeter2.c"	Data_OSADJCR=OSADJCR&0x1f;
	MOVAI	0x1f
	ANDAR	_OSADJCR
	MOVRA	_Data_OSADJCR
	GOTO	_00457_DS_
_00472_DS_
;	.line	744; "3S4SVoltmeter2.c"	Data_OSADJCR=OSADJCR&0x1f;
	MOVAI	0x1f
	ANDAR	_OSADJCR
	MOVRA	_Data_OSADJCR
_00469_DS_
;	.line	747; "3S4SVoltmeter2.c"	if(Data_OSADJCR==0x1f) {return;}
	MOVAR	_Data_OSADJCR
	XORAI	0x1f
	JBSET	PFLAG,2
	GOTO	_00466_DS_
	GOTO	_00475_DS_
_00466_DS_
;	.line	750; "3S4SVoltmeter2.c"	ADEOC=0;
	BCLR	_ADCR0bits,1
_00459_DS_
;	.line	751; "3S4SVoltmeter2.c"	while(ADEOC==0);
	JBSET	_ADCR0bits,1
	GOTO	_00459_DS_
;	.line	753; "3S4SVoltmeter2.c"	ADH_temp=ADRH;
	MOVAR	_ADRH
	MOVRA	_ADH_temp
;	.line	754; "3S4SVoltmeter2.c"	ADL_temp=ADRL;
	MOVAR	_ADRL
	MOVRA	_ADL_temp
;	.line	755; "3S4SVoltmeter2.c"	if((ADH_temp==0)&&(ADL_temp==0)) {return;}
	MOVAI	0x00
	ORAR	_ADH_temp
	JBSET	PFLAG,2
	GOTO	_00467_DS_
	MOVAI	0x00
	ORAR	_ADL_temp
	JBSET	PFLAG,2
	GOTO	_00467_DS_
	GOTO	_00475_DS_
_00467_DS_
;	.line	758; "3S4SVoltmeter2.c"	OSADJCR++;
	INCR	_OSADJCR
;	.line	759; "3S4SVoltmeter2.c"	Data_OSADJCR=OSADJCR&0x1f;
	MOVAI	0x1f
	ANDAR	_OSADJCR
	MOVRA	_Data_OSADJCR
	GOTO	_00469_DS_
_00475_DS_
	RETURN	
; exit point of _AD_Init_mode

;***
;  pBlock Stats: dbName = C
;***
;entry:  _All_Adc_Convert	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   __mulint
;   __mulint
;   __mulint
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   __mulint
;   __mulint
;   __mulint
;9 compiler assigned registers:
;   STK00
;   r0x1037
;   r0x1038
;   r0x1039
;   r0x103A
;   STK02
;   STK01
;   r0x103B
;   r0x103C
;; Starting pCode block
_All_Adc_Convert	;Function start
; 2 exit points
;	.line	543; "3S4SVoltmeter2.c"	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x20
	CALL	_SampleRelatedChannel
	MOVRA	(_BT_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_BT_VIN_AD
;	.line	544; "3S4SVoltmeter2.c"	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x30
	CALL	_SampleRelatedChannel
	MOVRA	(_B3_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B3_VIN_AD
;	.line	545; "3S4SVoltmeter2.c"	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x40
	CALL	_SampleRelatedChannel
	MOVRA	(_B2_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B2_VIN_AD
;	.line	546; "3S4SVoltmeter2.c"	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x50
	CALL	_SampleRelatedChannel
	MOVRA	(_B1_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B1_VIN_AD
;	.line	547; "3S4SVoltmeter2.c"	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS  
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x10
	CALL	_SampleRelatedChannel
	MOVRA	(_NTC_AD + 1)
	MOVAR	STK00
	MOVRA	_NTC_AD
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD71=3441), size=2
;	.line	550; "3S4SVoltmeter2.c"	if(B1_Ratio_VIN_AD>3440)//B1电压AD补偿换算
	MOVAI	0x0d
	RSUBAR	(_B1_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00426_DS_
	MOVAI	0x71
	RSUBAR	_B1_Ratio_VIN_AD
_00426_DS_
	JBSET	PFLAG,0
	GOTO	_00344_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	552; "3S4SVoltmeter2.c"	VIN_AD_Temp1=B1_Ratio_VIN_AD-3440;
	MOVAI	0x90
	ADDAR	_B1_Ratio_VIN_AD
	MOVRA	r0x1037
	MOVAI	0xf2
	MOVRA	r0x1038
	MOVAR	(_B1_Ratio_VIN_AD + 1)
	JBCLR	PFLAG,0
	JZAR	(_B1_Ratio_VIN_AD + 1)
	ADDRA	r0x1038
;	.line	553; "3S4SVoltmeter2.c"	if(B1_VIN_AD>VIN_AD_Temp1)
	MOVAR	(_B1_VIN_AD + 1)
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00427_DS_
	MOVAR	_B1_VIN_AD
	RSUBAR	r0x1037
_00427_DS_
	JBCLR	PFLAG,0
	GOTO	_00341_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	555; "3S4SVoltmeter2.c"	B1_VIN_AD=B1_VIN_AD-VIN_AD_Temp1; 	
	MOVAR	r0x1037
	RSUBRA	_B1_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	JZAR	r0x1038
	RSUBRA	(_B1_VIN_AD + 1)
	GOTO	_00345_DS_
_00341_DS_
;	.line	559; "3S4SVoltmeter2.c"	B1_VIN_AD=0;
	CLRR	_B1_VIN_AD
	CLRR	(_B1_VIN_AD + 1)
	GOTO	_00345_DS_
_00344_DS_
;	.line	564; "3S4SVoltmeter2.c"	VIN_AD_Temp1=3440-B1_Ratio_VIN_AD; 
	MOVAR	_B1_Ratio_VIN_AD
	ISUBAI	0x70
	MOVRA	r0x1037
	MOVAR	(_B1_Ratio_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_B1_Ratio_VIN_AD + 1)
	ISUBAI	0x0d
	MOVRA	r0x1038
;	.line	565; "3S4SVoltmeter2.c"	B1_VIN_AD=B1_VIN_AD+VIN_AD_Temp1;
	MOVAR	r0x1037
	ADDRA	_B1_VIN_AD
	MOVAR	r0x1038
	JBCLR	PFLAG,0
	JZAR	r0x1038
	ADDRA	(_B1_VIN_AD + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD71=3441), size=2
_00345_DS_
;	.line	569; "3S4SVoltmeter2.c"	if(B2_Ratio_VIN_AD>3440)//B1电压AD补偿换算
	MOVAI	0x0d
	RSUBAR	(_B2_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00428_DS_
	MOVAI	0x71
	RSUBAR	_B2_Ratio_VIN_AD
_00428_DS_
	JBSET	PFLAG,0
	GOTO	_00350_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	571; "3S4SVoltmeter2.c"	VIN_AD_Temp1=B2_Ratio_VIN_AD-3440;
	MOVAI	0x90
	ADDAR	_B2_Ratio_VIN_AD
	MOVRA	r0x1037
	MOVAI	0xf2
	MOVRA	r0x1038
	MOVAR	(_B2_Ratio_VIN_AD + 1)
	JBCLR	PFLAG,0
	JZAR	(_B2_Ratio_VIN_AD + 1)
	ADDRA	r0x1038
;	.line	572; "3S4SVoltmeter2.c"	if(B2_VIN_AD>VIN_AD_Temp1)
	MOVAR	(_B2_VIN_AD + 1)
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00429_DS_
	MOVAR	_B2_VIN_AD
	RSUBAR	r0x1037
_00429_DS_
	JBCLR	PFLAG,0
	GOTO	_00347_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	574; "3S4SVoltmeter2.c"	B2_VIN_AD=B2_VIN_AD-VIN_AD_Temp1; 	
	MOVAR	r0x1037
	RSUBRA	_B2_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	JZAR	r0x1038
	RSUBRA	(_B2_VIN_AD + 1)
	GOTO	_00351_DS_
_00347_DS_
;	.line	578; "3S4SVoltmeter2.c"	B2_VIN_AD=0;
	CLRR	_B2_VIN_AD
	CLRR	(_B2_VIN_AD + 1)
	GOTO	_00351_DS_
_00350_DS_
;	.line	583; "3S4SVoltmeter2.c"	VIN_AD_Temp1=3440-B2_Ratio_VIN_AD; 
	MOVAR	_B2_Ratio_VIN_AD
	ISUBAI	0x70
	MOVRA	r0x1037
	MOVAR	(_B2_Ratio_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_B2_Ratio_VIN_AD + 1)
	ISUBAI	0x0d
	MOVRA	r0x1038
;	.line	584; "3S4SVoltmeter2.c"	B2_VIN_AD=B2_VIN_AD+VIN_AD_Temp1;
	MOVAR	r0x1037
	ADDRA	_B2_VIN_AD
	MOVAR	r0x1038
	JBCLR	PFLAG,0
	JZAR	r0x1038
	ADDRA	(_B2_VIN_AD + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD71=3441), size=2
_00351_DS_
;	.line	588; "3S4SVoltmeter2.c"	if(B3_Ratio_VIN_AD>3440)//B1电压AD补偿换算
	MOVAI	0x0d
	RSUBAR	(_B3_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00430_DS_
	MOVAI	0x71
	RSUBAR	_B3_Ratio_VIN_AD
_00430_DS_
	JBSET	PFLAG,0
	GOTO	_00356_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	590; "3S4SVoltmeter2.c"	VIN_AD_Temp1=B3_Ratio_VIN_AD-3440;
	MOVAI	0x90
	ADDAR	_B3_Ratio_VIN_AD
	MOVRA	r0x1037
	MOVAI	0xf2
	MOVRA	r0x1038
	MOVAR	(_B3_Ratio_VIN_AD + 1)
	JBCLR	PFLAG,0
	JZAR	(_B3_Ratio_VIN_AD + 1)
	ADDRA	r0x1038
;	.line	591; "3S4SVoltmeter2.c"	if(B3_VIN_AD>VIN_AD_Temp1)
	MOVAR	(_B3_VIN_AD + 1)
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00431_DS_
	MOVAR	_B3_VIN_AD
	RSUBAR	r0x1037
_00431_DS_
	JBCLR	PFLAG,0
	GOTO	_00353_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	593; "3S4SVoltmeter2.c"	B3_VIN_AD=B3_VIN_AD-VIN_AD_Temp1; 	
	MOVAR	r0x1037
	RSUBRA	_B3_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	JZAR	r0x1038
	RSUBRA	(_B3_VIN_AD + 1)
	GOTO	_00357_DS_
_00353_DS_
;	.line	597; "3S4SVoltmeter2.c"	B3_VIN_AD=0;
	CLRR	_B3_VIN_AD
	CLRR	(_B3_VIN_AD + 1)
	GOTO	_00357_DS_
_00356_DS_
;	.line	602; "3S4SVoltmeter2.c"	VIN_AD_Temp1=3440-B3_Ratio_VIN_AD; 
	MOVAR	_B3_Ratio_VIN_AD
	ISUBAI	0x70
	MOVRA	r0x1037
	MOVAR	(_B3_Ratio_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_B3_Ratio_VIN_AD + 1)
	ISUBAI	0x0d
	MOVRA	r0x1038
;	.line	603; "3S4SVoltmeter2.c"	B3_VIN_AD=B3_VIN_AD+VIN_AD_Temp1;
	MOVAR	r0x1037
	ADDRA	_B3_VIN_AD
	MOVAR	r0x1038
	JBCLR	PFLAG,0
	JZAR	r0x1038
	ADDRA	(_B3_VIN_AD + 1)
_00357_DS_
;	.line	607; "3S4SVoltmeter2.c"	if(BT_3S_Series_Flag)//3串电池包
	JBSET	_Flag1,2
	GOTO	_00371_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD71=3441), size=2
;	.line	609; "3S4SVoltmeter2.c"	if(BT_Ratio_VIN_AD>3440)//B1电压AD补偿换算
	MOVAI	0x0d
	RSUBAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00432_DS_
	MOVAI	0x71
	RSUBAR	_BT_Ratio_VIN_AD
_00432_DS_
	JBSET	PFLAG,0
	GOTO	_00362_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	611; "3S4SVoltmeter2.c"	VIN_AD_Temp1=(BT_Ratio_VIN_AD-3440)*3/4;
	MOVAI	0x90
	ADDAR	_BT_Ratio_VIN_AD
	MOVRA	r0x1039
	MOVAI	0xf2
	MOVRA	r0x103A
	MOVAR	(_BT_Ratio_VIN_AD + 1)
	JBCLR	PFLAG,0
	JZAR	(_BT_Ratio_VIN_AD + 1)
	ADDRA	r0x103A
	MOVAR	r0x1039
	MOVRA	STK02
	MOVAR	r0x103A
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x103A
	MOVAR	STK00
	MOVRA	r0x1039
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=0, offr=0
	BCLR	PFLAG,0
	RRAR	r0x103A
	MOVRA	r0x1038
	RRAR	r0x1039
	MOVRA	r0x1037
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	r0x1038
	RRR	r0x1037
;	.line	612; "3S4SVoltmeter2.c"	if(BT_VIN_AD>VIN_AD_Temp1)
	MOVAR	(_BT_VIN_AD + 1)
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00433_DS_
	MOVAR	_BT_VIN_AD
	RSUBAR	r0x1037
_00433_DS_
	JBCLR	PFLAG,0
	GOTO	_00359_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	614; "3S4SVoltmeter2.c"	BT_VIN_AD=BT_VIN_AD-VIN_AD_Temp1; 	
	MOVAR	r0x1037
	RSUBRA	_BT_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	JZAR	r0x1038
	RSUBRA	(_BT_VIN_AD + 1)
	GOTO	_00372_DS_
_00359_DS_
;	.line	618; "3S4SVoltmeter2.c"	BT_VIN_AD=0;
	CLRR	_BT_VIN_AD
	CLRR	(_BT_VIN_AD + 1)
	GOTO	_00372_DS_
_00362_DS_
;	.line	623; "3S4SVoltmeter2.c"	VIN_AD_Temp1=(3440-BT_Ratio_VIN_AD)*3/4; 
	MOVAR	_BT_Ratio_VIN_AD
	ISUBAI	0x70
	MOVRA	r0x1039
	MOVAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_BT_Ratio_VIN_AD + 1)
	ISUBAI	0x0d
	MOVRA	r0x103A
	MOVAR	r0x1039
	MOVRA	STK02
	MOVAR	r0x103A
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x103A
	MOVAR	STK00
	MOVRA	r0x1039
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=0, offr=0
	BCLR	PFLAG,0
	RRAR	r0x103A
	MOVRA	r0x1038
	RRAR	r0x1039
	MOVRA	r0x1037
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	r0x1038
	RRR	r0x1037
;	.line	624; "3S4SVoltmeter2.c"	BT_VIN_AD=BT_VIN_AD+VIN_AD_Temp1;
	MOVAR	r0x1037
	ADDRA	_BT_VIN_AD
	MOVAR	r0x1038
	JBCLR	PFLAG,0
	JZAR	r0x1038
	ADDRA	(_BT_VIN_AD + 1)
	GOTO	_00372_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD71=3441), size=2
_00371_DS_
;	.line	629; "3S4SVoltmeter2.c"	if(BT_Ratio_VIN_AD>3440)//B1电压AD补偿换算
	MOVAI	0x0d
	RSUBAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00434_DS_
	MOVAI	0x71
	RSUBAR	_BT_Ratio_VIN_AD
_00434_DS_
	JBSET	PFLAG,0
	GOTO	_00368_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	631; "3S4SVoltmeter2.c"	VIN_AD_Temp1=BT_Ratio_VIN_AD-3440;
	MOVAI	0x90
	ADDAR	_BT_Ratio_VIN_AD
	MOVRA	r0x1037
	MOVAI	0xf2
	MOVRA	r0x1038
	MOVAR	(_BT_Ratio_VIN_AD + 1)
	JBCLR	PFLAG,0
	JZAR	(_BT_Ratio_VIN_AD + 1)
	ADDRA	r0x1038
;	.line	632; "3S4SVoltmeter2.c"	if(BT_VIN_AD>VIN_AD_Temp1)
	MOVAR	(_BT_VIN_AD + 1)
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00435_DS_
	MOVAR	_BT_VIN_AD
	RSUBAR	r0x1037
_00435_DS_
	JBCLR	PFLAG,0
	GOTO	_00365_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	634; "3S4SVoltmeter2.c"	BT_VIN_AD=BT_VIN_AD-VIN_AD_Temp1; 	
	MOVAR	r0x1037
	RSUBRA	_BT_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	JZAR	r0x1038
	RSUBRA	(_BT_VIN_AD + 1)
	GOTO	_00372_DS_
_00365_DS_
;	.line	638; "3S4SVoltmeter2.c"	BT_VIN_AD=0;
	CLRR	_BT_VIN_AD
	CLRR	(_BT_VIN_AD + 1)
	GOTO	_00372_DS_
_00368_DS_
;	.line	643; "3S4SVoltmeter2.c"	VIN_AD_Temp1=3440-BT_Ratio_VIN_AD; 
	MOVAR	_BT_Ratio_VIN_AD
	ISUBAI	0x70
	MOVRA	r0x1037
	MOVAR	(_BT_Ratio_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_BT_Ratio_VIN_AD + 1)
	ISUBAI	0x0d
	MOVRA	r0x1038
;	.line	644; "3S4SVoltmeter2.c"	BT_VIN_AD=BT_VIN_AD+VIN_AD_Temp1;
	MOVAR	r0x1037
	ADDRA	_BT_VIN_AD
	MOVAR	r0x1038
	JBCLR	PFLAG,0
	JZAR	r0x1038
	ADDRA	(_BT_VIN_AD + 1)
_00372_DS_
;	.line	651; "3S4SVoltmeter2.c"	B1_Single_VIN_AD=B1_VIN_AD;//B1单节电压等于节点电压;
	MOVAR	_B1_VIN_AD
	MOVRA	_B1_Single_VIN_AD
	MOVAR	(_B1_VIN_AD + 1)
	MOVRA	(_B1_Single_VIN_AD + 1)
;	.line	652; "3S4SVoltmeter2.c"	VIN_AD_Temp2=B2_VIN_AD*2;//B2单节电压转换
	BCLR	PFLAG,0
	RLAR	_B2_VIN_AD
	MOVRA	r0x1039
	MOVRA	r0x1037
	RLAR	(_B2_VIN_AD + 1)
	MOVRA	r0x103A
	MOVRA	r0x1038
;;126	MOVAR	r0x1037
;;127	MOVAR	r0x1038
;	.line	653; "3S4SVoltmeter2.c"	if(VIN_AD_Temp2>B1_VIN_AD)
	MOVAR	r0x103A
	RSUBAR	(_B1_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00436_DS_
	MOVAR	r0x1039
	RSUBAR	_B1_VIN_AD
_00436_DS_
	JBCLR	PFLAG,0
	GOTO	_00374_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	655; "3S4SVoltmeter2.c"	B2_Single_VIN_AD=VIN_AD_Temp2-B1_VIN_AD;//B2单节电压转换 
	MOVAR	_B1_VIN_AD
	RSUBAR	r0x1039
	MOVRA	_B2_Single_VIN_AD
	MOVAR	(_B1_VIN_AD + 1)
	JBSET	PFLAG,0
	INCAR	(_B1_VIN_AD + 1)
	RSUBAR	r0x103A
	MOVRA	(_B2_Single_VIN_AD + 1)
	GOTO	_00375_DS_
_00374_DS_
;	.line	659; "3S4SVoltmeter2.c"	B2_Single_VIN_AD=0;  
	CLRR	_B2_Single_VIN_AD
	CLRR	(_B2_Single_VIN_AD + 1)
_00375_DS_
;	.line	663; "3S4SVoltmeter2.c"	if(BT_4S_Series_Flag)//4串电池包
	JBSET	_Flag1,3
	GOTO	_00388_DS_
;	.line	666; "3S4SVoltmeter2.c"	VIN_AD_Temp2=B3_VIN_AD*3;//B3单节电压转换
	MOVAR	_B3_VIN_AD
	MOVRA	STK02
	MOVAR	(_B3_VIN_AD + 1)
	MOVRA	STK01
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x103B
	MOVAR	STK00
	MOVRA	r0x1039
	MOVRA	r0x103C
;;130	MOVAR	r0x103C
;;129	MOVAR	r0x103B
;;128	MOVAR	r0x103A
;	.line	667; "3S4SVoltmeter2.c"	if(VIN_AD_Temp2>VIN_AD_Temp1)
	MOVAR	r0x103B
	MOVRA	r0x103A
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00437_DS_
	MOVAR	r0x1039
	RSUBAR	r0x1037
_00437_DS_
	JBCLR	PFLAG,0
	GOTO	_00377_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	669; "3S4SVoltmeter2.c"	B3_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//B3单节电压转换 
	MOVAR	r0x1037
	RSUBAR	r0x1039
	MOVRA	_B3_Single_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	INCAR	r0x1038
	RSUBAR	r0x103A
	MOVRA	(_B3_Single_VIN_AD + 1)
	GOTO	_00378_DS_
_00377_DS_
;	.line	673; "3S4SVoltmeter2.c"	B3_Single_VIN_AD=0;  
	CLRR	_B3_Single_VIN_AD
	CLRR	(_B3_Single_VIN_AD + 1)
_00378_DS_
;	.line	676; "3S4SVoltmeter2.c"	VIN_AD_Temp2=BT_VIN_AD*4;//BT单节电压转换
	BCLR	PFLAG,0
	RLAR	_BT_VIN_AD
	MOVRA	r0x1039
	RLAR	(_BT_VIN_AD + 1)
	MOVRA	r0x103A
	BCLR	PFLAG,0
	RLR	r0x1039
	RLR	r0x103A
;	.line	677; "3S4SVoltmeter2.c"	if(VIN_AD_Temp2>VIN_AD_Temp1)
	MOVAR	r0x103A
	RSUBAR	r0x103B
	JBSET	PFLAG,2
	GOTO	_00438_DS_
	MOVAR	r0x1039
	RSUBAR	r0x103C
_00438_DS_
	JBCLR	PFLAG,0
	GOTO	_00380_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	679; "3S4SVoltmeter2.c"	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT单节电压转换 
	MOVAR	r0x103C
	RSUBAR	r0x1039
	MOVRA	_BT_Single_VIN_AD
	MOVAR	r0x103B
	JBSET	PFLAG,0
	INCAR	r0x103B
	RSUBAR	r0x103A
	MOVRA	(_BT_Single_VIN_AD + 1)
	GOTO	_00390_DS_
_00380_DS_
;	.line	683; "3S4SVoltmeter2.c"	BT_Single_VIN_AD=0;  
	CLRR	_BT_Single_VIN_AD
	CLRR	(_BT_Single_VIN_AD + 1)
	GOTO	_00390_DS_
_00388_DS_
;	.line	686; "3S4SVoltmeter2.c"	else if(BT_3S_Series_Flag)//3串电池包
	JBSET	_Flag1,2
	GOTO	_00390_DS_
;	.line	688; "3S4SVoltmeter2.c"	B3_Single_VIN_AD=0;    	
	CLRR	_B3_Single_VIN_AD
	CLRR	(_B3_Single_VIN_AD + 1)
;	.line	690; "3S4SVoltmeter2.c"	VIN_AD_Temp2=BT_VIN_AD*4;//BT单节电压转换
	BCLR	PFLAG,0
	RLAR	_BT_VIN_AD
	MOVRA	r0x1039
	RLAR	(_BT_VIN_AD + 1)
	MOVRA	r0x103A
	BCLR	PFLAG,0
	RLR	r0x1039
	RLR	r0x103A
;	.line	691; "3S4SVoltmeter2.c"	if(VIN_AD_Temp2>VIN_AD_Temp1)
	MOVAR	r0x103A
	RSUBAR	r0x1038
	JBSET	PFLAG,2
	GOTO	_00439_DS_
	MOVAR	r0x1039
	RSUBAR	r0x1037
_00439_DS_
	JBCLR	PFLAG,0
	GOTO	_00383_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	693; "3S4SVoltmeter2.c"	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT单节电压转换 
	MOVAR	r0x1037
	RSUBAR	r0x1039
	MOVRA	_BT_Single_VIN_AD
	MOVAR	r0x1038
	JBSET	PFLAG,0
	INCAR	r0x1038
	RSUBAR	r0x103A
	MOVRA	(_BT_Single_VIN_AD + 1)
	GOTO	_00390_DS_
_00383_DS_
;	.line	697; "3S4SVoltmeter2.c"	BT_Single_VIN_AD=0;  
	CLRR	_BT_Single_VIN_AD
	CLRR	(_BT_Single_VIN_AD + 1)
_00390_DS_
	RETURN	
; exit point of _All_Adc_Convert

;***
;  pBlock Stats: dbName = C
;***
;entry:  _ADC_Value_Ratio	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _Delay1mS_1M
;   _Delay1mS_1M
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _SampleRelatedChannel
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Write
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _EEPROM_Read
;   _Delay1mS_1M
;   _Delay1mS_1M
;17 compiler assigned registers:
;   r0x103E
;   STK00
;   r0x103F
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   r0x1046
;   r0x1047
;   r0x1048
;   r0x1049
;   r0x104A
;   r0x104B
;   r0x104C
;   r0x104D
;; Starting pCode block
_ADC_Value_Ratio	;Function start
; 2 exit points
;	.line	462; "3S4SVoltmeter2.c"	RLED_ON;//关红光LED
	BSET	_IOP2bits,5
;	.line	463; "3S4SVoltmeter2.c"	GLED_ON;//开绿光LED
	BSET	_IOP0bits,5
;	.line	465; "3S4SVoltmeter2.c"	while(1)//
	CLRR	r0x103E
_00280_DS_
;	.line	467; "3S4SVoltmeter2.c"	JI_Temp++;//单节电压为4.2V正负2.5%，次极电压大于10V，NTC为300K正常
	INCR	r0x103E
;	.line	468; "3S4SVoltmeter2.c"	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x20
	CALL	_SampleRelatedChannel
	MOVRA	(_BT_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_BT_VIN_AD
;	.line	469; "3S4SVoltmeter2.c"	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x30
	CALL	_SampleRelatedChannel
	MOVRA	(_B3_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B3_VIN_AD
;	.line	470; "3S4SVoltmeter2.c"	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x40
	CALL	_SampleRelatedChannel
	MOVRA	(_B2_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B2_VIN_AD
;	.line	471; "3S4SVoltmeter2.c"	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1点电压AD值检测充电电压1.2MS
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x50
	CALL	_SampleRelatedChannel
	MOVRA	(_B1_VIN_AD + 1)
	MOVAR	STK00
	MOVRA	_B1_VIN_AD
;	.line	472; "3S4SVoltmeter2.c"	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS  
	MOVAI	0x0c
	MOVRA	STK00
	MOVAI	0x10
	CALL	_SampleRelatedChannel
	MOVRA	(_NTC_AD + 1)
	MOVAR	STK00
	MOVRA	_NTC_AD
;;unsigned compare: left < lit(0x64=100), size=1
;	.line	473; "3S4SVoltmeter2.c"	if(JI_Temp>=100)
	MOVAI	0x64
	RSUBAR	r0x103E
	JBSET	PFLAG,0
	GOTO	_00280_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xF6A=3946), size=2
;	.line	475; "3S4SVoltmeter2.c"	if((NTC_AD>3945)&&(NTC_AD<3980)&&(B1_VIN_AD>=3350)&&(B1_VIN_AD<=3530)&&(B2_VIN_AD>=3350)&&(B2_VIN_AD<=3530)&&(B3_VIN_AD>=3350)&&(B3_VIN_AD<=3530)&&(BT_VIN_AD>=3350)&&(BT_VIN_AD<=3530))//
	MOVAI	0x0f
	RSUBAR	(_NTC_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00326_DS_
	MOVAI	0x6a
	RSUBAR	_NTC_AD
_00326_DS_
	JBSET	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xF8C=3980), size=2
	MOVAI	0x0f
	RSUBAR	(_NTC_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00327_DS_
	MOVAI	0x8c
	RSUBAR	_NTC_AD
_00327_DS_
	JBCLR	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B1_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00328_DS_
	MOVAI	0x16
	RSUBAR	_B1_VIN_AD
_00328_DS_
	JBSET	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B1_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00329_DS_
	MOVAI	0xcb
	RSUBAR	_B1_VIN_AD
_00329_DS_
	JBCLR	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B2_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00330_DS_
	MOVAI	0x16
	RSUBAR	_B2_VIN_AD
_00330_DS_
	JBSET	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B2_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00331_DS_
	MOVAI	0xcb
	RSUBAR	_B2_VIN_AD
_00331_DS_
	JBCLR	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_B3_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00332_DS_
	MOVAI	0x16
	RSUBAR	_B3_VIN_AD
_00332_DS_
	JBSET	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_B3_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00333_DS_
	MOVAI	0xcb
	RSUBAR	_B3_VIN_AD
_00333_DS_
	JBCLR	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0xD16=3350), size=2
	MOVAI	0x0d
	RSUBAR	(_BT_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00334_DS_
	MOVAI	0x16
	RSUBAR	_BT_VIN_AD
_00334_DS_
	JBSET	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xDCB=3531), size=2
	MOVAI	0x0d
	RSUBAR	(_BT_VIN_AD + 1)
	JBSET	PFLAG,2
	GOTO	_00335_DS_
	MOVAI	0xcb
	RSUBAR	_BT_VIN_AD
_00335_DS_
	JBCLR	PFLAG,0
	GOTO	_00264_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	478; "3S4SVoltmeter2.c"	EEPROM_Write(0x00,0xA5);//前地址，后数据,0xA5第一标识位
	MOVAI	0xa5
	MOVRA	STK00
	MOVAI	0x00
	CALL	_EEPROM_Write
;	.line	479; "3S4SVoltmeter2.c"	EEPROM_Write(0x01,0xCA);//前地址，后数据,0xCA第二标识位
	MOVAI	0xca
	MOVRA	STK00
	MOVAI	0x01
	CALL	_EEPROM_Write
;	.line	480; "3S4SVoltmeter2.c"	AD_Temp_L=(uchar)(B1_VIN_AD&0x00FF);//取AD低8位
	MOVAR	_B1_VIN_AD
	MOVRA	r0x103E
	CLRR	r0x103F
	MOVAR	r0x103E
	MOVRA	r0x1040
;	.line	481; "3S4SVoltmeter2.c"	AD_Temp_H=(uchar)((B1_VIN_AD>>8)&0x00FF);//取AD高8位
	MOVAR	(_B1_VIN_AD + 1)
	MOVRA	r0x103E
	CLRR	r0x103F
	CLRR	r0x103F
;;157	MOVAR	r0x103E
;;156	MOVAR	r0x1041
;	.line	482; "3S4SVoltmeter2.c"	EEPROM_Write(0x02, AD_Temp_H);//前地址，后数据,B1_VIN_AD高位
	MOVAR	r0x103E
	MOVRA	r0x1041
	MOVRA	STK00
	MOVAI	0x02
	CALL	_EEPROM_Write
;	.line	483; "3S4SVoltmeter2.c"	EEPROM_Write(0x03,AD_Temp_L);//前地址，后数据,B1_VIN_AD低位   	   	   	   	   	   	   	  
	MOVAR	r0x1040
	MOVRA	STK00
	MOVAI	0x03
	CALL	_EEPROM_Write
;	.line	484; "3S4SVoltmeter2.c"	AD_Temp_L=(uchar)(B2_VIN_AD&0x00FF);//取AD低8位
	MOVAR	_B2_VIN_AD
	MOVRA	r0x103E
	CLRR	r0x103F
	MOVAR	r0x103E
	MOVRA	r0x1040
;	.line	485; "3S4SVoltmeter2.c"	AD_Temp_H=(uchar)((B2_VIN_AD>>8)&0x00FF);//取AD高8位
	MOVAR	(_B2_VIN_AD + 1)
	MOVRA	r0x103E
	CLRR	r0x103F
	CLRR	r0x103F
;;150	MOVAR	r0x103E
;;149	MOVAR	r0x1041
;	.line	486; "3S4SVoltmeter2.c"	EEPROM_Write(0x04, AD_Temp_H);//前地址，后数据,B2_VIN_AD高位
	MOVAR	r0x103E
	MOVRA	r0x1041
	MOVRA	STK00
	MOVAI	0x04
	CALL	_EEPROM_Write
;	.line	487; "3S4SVoltmeter2.c"	EEPROM_Write(0x05,AD_Temp_L);//前地址，后数据,B2_VIN_AD低位
	MOVAR	r0x1040
	MOVRA	STK00
	MOVAI	0x05
	CALL	_EEPROM_Write
;	.line	488; "3S4SVoltmeter2.c"	AD_Temp_L=(uchar)(B3_VIN_AD&0x00FF);//取AD低8位
	MOVAR	_B3_VIN_AD
	MOVRA	r0x103E
	CLRR	r0x103F
	MOVAR	r0x103E
	MOVRA	r0x1040
;	.line	489; "3S4SVoltmeter2.c"	AD_Temp_H=(uchar)((B3_VIN_AD>>8)&0x00FF);//取AD高8位
	MOVAR	(_B3_VIN_AD + 1)
	MOVRA	r0x103E
	CLRR	r0x103F
	CLRR	r0x103F
;;140	MOVAR	r0x103E
;;139	MOVAR	r0x1041
;	.line	490; "3S4SVoltmeter2.c"	EEPROM_Write(0x06, AD_Temp_H);//前地址，后数据,B3_VIN_AD高位
	MOVAR	r0x103E
	MOVRA	r0x1041
	MOVRA	STK00
	MOVAI	0x06
	CALL	_EEPROM_Write
;	.line	491; "3S4SVoltmeter2.c"	EEPROM_Write(0x07,AD_Temp_L);//前地址，后数据,B3_VIN_AD低位
	MOVAR	r0x1040
	MOVRA	STK00
	MOVAI	0x07
	CALL	_EEPROM_Write
;	.line	492; "3S4SVoltmeter2.c"	AD_Temp_L=(uchar)(BT_VIN_AD&0x00FF);//取AD低8位
	MOVAR	_BT_VIN_AD
	MOVRA	r0x103E
	CLRR	r0x103F
	MOVAR	r0x103E
	MOVRA	r0x1040
;	.line	493; "3S4SVoltmeter2.c"	AD_Temp_H=(uchar)((BT_VIN_AD>>8)&0x00FF);//取AD高8位
	MOVAR	(_BT_VIN_AD + 1)
	MOVRA	r0x103E
	CLRR	r0x103F
	CLRR	r0x103F
;;109	MOVAR	r0x103E
;;108	MOVAR	r0x1041
;	.line	494; "3S4SVoltmeter2.c"	EEPROM_Write(0x08, AD_Temp_H);//前地址，后数据,BT_VIN_AD高位
	MOVAR	r0x103E
	MOVRA	r0x1041
	MOVRA	STK00
	MOVAI	0x08
	CALL	_EEPROM_Write
;	.line	495; "3S4SVoltmeter2.c"	EEPROM_Write(0x09,AD_Temp_L);//前地址，后数据,BT_VIN_AD低位 
	MOVAR	r0x1040
	MOVRA	STK00
	MOVAI	0x09
	CALL	_EEPROM_Write
;	.line	498; "3S4SVoltmeter2.c"	Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM读程序 
	MOVAI	0x00
	CALL	_EEPROM_Read
	MOVRA	r0x103F
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x103E
;;167	MOVAR	r0x103E
;;169	MOVAR	r0x103E
;	.line	499; "3S4SVoltmeter2.c"	Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM读程序 
	MOVAI	0x01
	CALL	_EEPROM_Read
	MOVRA	r0x1042
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x103E
;;161	MOVAR	r0x103E
;;165	MOVAR	r0x103E
;	.line	500; "3S4SVoltmeter2.c"	AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM读程序
	MOVAI	0x02
	CALL	_EEPROM_Read
	MOVRA	r0x1041
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x103E
;;147	MOVAR	r0x103E
;;155	MOVAR	r0x103E
;	.line	501; "3S4SVoltmeter2.c"	AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM读程序	   	   	   	   	   	   	  
	MOVAI	0x03
	CALL	_EEPROM_Read
	MOVRA	r0x1048
	MOVRA	r0x1046
	MOVRA	r0x1040
	MOVRA	r0x103E
;;136	MOVAR	r0x103E
	MOVAR	r0x103E
	MOVRA	_EEPROM_Data_Value
;;112	MOVAR	r0x1041
;	.line	502; "3S4SVoltmeter2.c"	B1_Ratio_Read_Value=AD_Temp_H;
	MOVRA	r0x103E
	CLRR	r0x1043
;;104	MOVAR	r0x103E
;	.line	503; "3S4SVoltmeter2.c"	B1_Ratio_Read_Value=((B1_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
	CLRR	r0x1045
;;148	MOVAR	r0x1040
	CLRR	r0x1047
;;162	MOVAR	r0x1046
	MOVAI	0x00
	MOVRA	r0x1049
	MOVAR	r0x1048
	ADDAR	r0x1045
	MOVRA	r0x103E
;;111	MOVAR	r0x1044
	MOVAR	r0x1041
	MOVRA	r0x1044
	MOVRA	r0x1043
	MOVAR	r0x1049
	JBCLR	PFLAG,0
	JZAR	r0x1049
	ADDRA	r0x1043
;	.line	504; "3S4SVoltmeter2.c"	AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM读程序
	MOVAI	0x04
	CALL	_EEPROM_Read
	MOVRA	r0x1041
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x1045
;;141	MOVAR	r0x1045
;;151	MOVAR	r0x1045
;	.line	505; "3S4SVoltmeter2.c"	AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM读程序	   	   	   	   	   	   	  
	MOVAI	0x05
	CALL	_EEPROM_Read
	MOVRA	r0x1045
	MOVAR	r0x1045
	MOVRA	r0x1048
	MOVRA	r0x1040
	MOVAR	r0x1045
	MOVRA	_EEPROM_Data_Value
;;115	MOVAR	r0x1041
;	.line	506; "3S4SVoltmeter2.c"	B2_Ratio_Read_Value=AD_Temp_H;
	MOVRA	r0x1045
	CLRR	r0x1044
;;110	MOVAR	r0x1045
;	.line	507; "3S4SVoltmeter2.c"	B2_Ratio_Read_Value=((B2_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
	CLRR	r0x1046
;;138	MOVAR	r0x1040
	CLRR	r0x1049
;;145	MOVAR	r0x1048
	MOVAI	0x00
	MOVRA	r0x104B
;;144	MOVAR	r0x104A
	MOVAR	r0x1048
	MOVRA	r0x104A
	ADDAR	r0x1046
	MOVRA	r0x1045
;;114	MOVAR	r0x1047
	MOVAR	r0x1041
	MOVRA	r0x1047
	MOVRA	r0x1044
	MOVAR	r0x104B
	JBCLR	PFLAG,0
	JZAR	r0x104B
	ADDRA	r0x1044
;	.line	508; "3S4SVoltmeter2.c"	AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM读程序
	MOVAI	0x06
	CALL	_EEPROM_Read
	MOVRA	r0x1041
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x1046
;;152	MOVAR	r0x1046
;;158	MOVAR	r0x1046
;	.line	509; "3S4SVoltmeter2.c"	AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM读程序	   	   	   	   	   	   	  
	MOVAI	0x07
	CALL	_EEPROM_Read
	MOVRA	r0x1040
	MOVRA	r0x1046
;;142	MOVAR	r0x1046
	MOVAR	r0x1046
	MOVRA	_EEPROM_Data_Value
;;118	MOVAR	r0x1041
;	.line	510; "3S4SVoltmeter2.c"	B3_Ratio_Read_Value=AD_Temp_H;
	MOVRA	r0x1046
	CLRR	r0x1047
;;113	MOVAR	r0x1046
;	.line	511; "3S4SVoltmeter2.c"	B3_Ratio_Read_Value=((B3_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
	CLRR	r0x1048
;;123	MOVAR	r0x1040
	MOVRA	r0x104A
	CLRR	r0x104B
;;119	MOVAR	r0x104A
;;125	MOVAR	r0x104B
;;122	MOVAR	r0x104C
	MOVAR	r0x1040
	MOVRA	r0x104C
	ADDAR	r0x1048
	MOVRA	r0x1046
;;117	MOVAR	r0x1049
	MOVAR	r0x1041
	MOVRA	r0x1049
	MOVRA	r0x1047
;;124	MOVAR	r0x104D
	MOVAI	0x00
	MOVRA	r0x104D
	JBCLR	PFLAG,0
	JZAR	r0x104D
	ADDRA	r0x1047
;	.line	512; "3S4SVoltmeter2.c"	AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM读程序
	MOVAI	0x08
	CALL	_EEPROM_Read
	MOVRA	r0x1041
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x1048
;;159	MOVAR	r0x1048
;;163	MOVAR	r0x1048
;	.line	513; "3S4SVoltmeter2.c"	AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM读程序	   	   	   	   	   	   	  
	MOVAI	0x09
	CALL	_EEPROM_Read
	MOVRA	r0x1040
	MOVRA	_EEPROM_Data_Value
	MOVRA	r0x1048
;;143	MOVAR	r0x1048
;;153	MOVAR	r0x1048
;	.line	514; "3S4SVoltmeter2.c"	BT_Ratio_Read_Value=AD_Temp_H;
	MOVAR	r0x1041
	MOVRA	r0x104A
	MOVRA	r0x1048
	CLRR	r0x1049
;;116	MOVAR	r0x1048
;	.line	515; "3S4SVoltmeter2.c"	BT_Ratio_Read_Value=((BT_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
	CLRR	r0x1041
;;121	MOVAR	r0x1040
	CLRR	r0x104C
;;107	MOVAR	r0x104B
	MOVAI	0x00
	MOVRA	r0x104D
;;106	MOVAR	r0x1040
;;120	MOVAR	r0x104B
	MOVAR	r0x1040
	MOVRA	r0x104B
	MOVRA	r0x1040
	ADDAR	r0x1041
	MOVRA	r0x1048
	MOVAR	r0x104A
	MOVRA	r0x1049
	MOVAR	r0x104D
	JBCLR	PFLAG,0
	JZAR	r0x104D
	ADDRA	r0x1049
;	.line	516; "3S4SVoltmeter2.c"	if((Flag1_A5==0xA5)&&(Flag2_CA==0xCA)&&(B1_Ratio_Read_Value==B1_VIN_AD)&&(B2_Ratio_Read_Value==B2_VIN_AD)&&(B3_Ratio_Read_Value==B3_VIN_AD)&&(BT_Ratio_Read_Value==BT_VIN_AD))
	MOVAR	r0x103F
	XORAI	0xa5
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	r0x1042
	XORAI	0xca
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	_B1_VIN_AD
	XORAR	r0x103E
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	(_B1_VIN_AD + 1)
	XORAR	r0x1043
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	_B2_VIN_AD
	XORAR	r0x1045
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	(_B2_VIN_AD + 1)
	XORAR	r0x1044
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	_B3_VIN_AD
	XORAR	r0x1046
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	(_B3_VIN_AD + 1)
	XORAR	r0x1047
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	_BT_VIN_AD
	XORAR	r0x1048
	JBSET	PFLAG,2
	GOTO	_00264_DS_
	MOVAR	(_BT_VIN_AD + 1)
	XORAR	r0x1049
	JBSET	PFLAG,2
	GOTO	_00264_DS_
;	.line	518; "3S4SVoltmeter2.c"	RLED_OFF;//红光LED灭
	BCLR	_IOP2bits,5
_00254_DS_
;	.line	521; "3S4SVoltmeter2.c"	Delay1mS_1M(500);//延时时250Ms   	
	MOVAI	0xf4
	MOVRA	STK00
	MOVAI	0x01
	CALL	_Delay1mS_1M
;	.line	522; "3S4SVoltmeter2.c"	GLED=!GLED;
	CLRR	r0x103E
	JBCLR	_IOP0bits,5
	INCR	r0x103E
	MOVAR	r0x103E
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x103E
	MOVRA	r0x103F
;;137	MOVAR	r0x103F
	RRAR	r0x103E
	JBSET	PFLAG,0
	BCLR	_IOP0bits,5
	JBCLR	PFLAG,0
	BSET	_IOP0bits,5
	GOTO	_00254_DS_
_00264_DS_
;	.line	528; "3S4SVoltmeter2.c"	GLED_OFF;//开绿光LED
	BCLR	_IOP0bits,5
_00275_DS_
;	.line	531; "3S4SVoltmeter2.c"	Delay1mS_1M(250);//延时时250Ms   	
	MOVAI	0xfa
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
;	.line	532; "3S4SVoltmeter2.c"	RLED=!RLED;
	CLRR	r0x103E
	JBCLR	_IOP2bits,5
	INCR	r0x103E
	MOVAR	r0x103E
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x103E
	MOVRA	r0x103F
;;105	MOVAR	r0x103F
	RRAR	r0x103E
	JBSET	PFLAG,0
	BCLR	_IOP2bits,5
	JBCLR	PFLAG,0
	BSET	_IOP2bits,5
	GOTO	_00275_DS_
	RETURN	
; exit point of _ADC_Value_Ratio

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_write_hanzi	;Function start
; 2 exit points
;has an exit
;functions called:
;   _LCD_set_XY
;   __gptrget1
;   _LCD_write_byte
;   _LCD_set_XY
;   __gptrget1
;   _LCD_write_byte
;   _LCD_set_XY
;   __gptrget1
;   _LCD_write_byte
;   _LCD_set_XY
;   __gptrget1
;   _LCD_write_byte
;9 compiler assigned registers:
;   r0x1052
;   STK00
;   r0x1053
;   STK01
;   r0x1054
;   r0x1055
;   r0x1056
;   r0x1057
;   r0x1058
;; Starting pCode block
_LCD_write_hanzi	;Function start
; 2 exit points
;	.line	433; "3S4SVoltmeter2.c"	void LCD_write_hanzi(uchar row,uchar page,uchar c)
	MOVRA	r0x1052
	MOVAR	STK00
	MOVRA	r0x1053
	MOVAR	STK01
	MOVRA	r0x1054
;	.line	436; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗计数器
	clrwdt
;	.line	437; "3S4SVoltmeter2.c"	LCD_set_XY((row*16)+19,page);// 列，页 
	SWAPAR	r0x1052
	ANDAI	0xf0
	MOVRA	r0x1055
	MOVAI	0x13
	ADDAR	r0x1055
	MOVRA	r0x1052
	MOVAR	r0x1053
	MOVRA	STK00
	MOVAR	r0x1052
	CALL	_LCD_set_XY
;	.line	438; "3S4SVoltmeter2.c"	for(i=0; i<16;i++) 
	SWAPAR	r0x1054
	ANDAI	0xf0
	MOVRA	r0x1055
	BCLR	PFLAG,0
	RLR	r0x1055
	CLRR	r0x1054
;;unsigned compare: left < lit(0x10=16), size=1
_00240_DS_
	MOVAI	0x10
	RSUBAR	r0x1054
	JBCLR	PFLAG,0
	GOTO	_00243_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	440; "3S4SVoltmeter2.c"	LCD_write_byte(hanzi[c*32+i],1); 
	MOVAR	r0x1054
	ADDAR	r0x1055
	MOVRA	r0x1056
	MOVAR	r0x1056
	ADDAI	(_hanzi + 0)
	MOVRA	r0x1056
	MOVAI	high (_hanzi + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1057
	MOVAR	r0x1056
	MOVRA	STK01
	MOVAR	r0x1057
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1058
	MOVAI	0x01
	MOVRA	STK00
	MOVAR	r0x1058
	CALL	_LCD_write_byte
;	.line	438; "3S4SVoltmeter2.c"	for(i=0; i<16;i++) 
	INCR	r0x1054
	GOTO	_00240_DS_
_00243_DS_
;	.line	442; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗计数器
	clrwdt
;	.line	443; "3S4SVoltmeter2.c"	LCD_set_XY((row*16)+19,page+1);// 列，页 
	INCR	r0x1053
	MOVAR	r0x1053
	MOVRA	STK00
	MOVAR	r0x1052
	CALL	_LCD_set_XY
;	.line	444; "3S4SVoltmeter2.c"	for(i=16; i<32;i++) 
	MOVAI	0x10
	MOVRA	r0x1052
;;unsigned compare: left < lit(0x20=32), size=1
_00244_DS_
	MOVAI	0x20
	RSUBAR	r0x1052
	JBCLR	PFLAG,0
	GOTO	_00248_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	446; "3S4SVoltmeter2.c"	LCD_write_byte(hanzi[c*32+i],1);
	MOVAR	r0x1052
	ADDAR	r0x1055
	MOVRA	r0x1053
	MOVAR	r0x1053
	ADDAI	(_hanzi + 0)
	MOVRA	r0x1053
	MOVAI	high (_hanzi + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1054
	MOVAR	r0x1053
	MOVRA	STK01
	MOVAR	r0x1054
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1056
	MOVAI	0x01
	MOVRA	STK00
	MOVAR	r0x1056
	CALL	_LCD_write_byte
;	.line	444; "3S4SVoltmeter2.c"	for(i=16; i<32;i++) 
	INCR	r0x1052
	GOTO	_00244_DS_
_00248_DS_
	RETURN	
; exit point of _LCD_write_hanzi

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_write_shu57	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   _LCD_set_XY
;   __mulchar
;   __gptrget1
;   _LCD_write_byte
;   __mulchar
;   _LCD_set_XY
;   __mulchar
;   __gptrget1
;   _LCD_write_byte
;7 compiler assigned registers:
;   r0x1059
;   STK00
;   r0x105A
;   STK01
;   r0x105B
;   r0x105C
;   r0x105D
;; Starting pCode block
_LCD_write_shu57	;Function start
; 2 exit points
;	.line	416; "3S4SVoltmeter2.c"	void LCD_write_shu57(uchar row,uchar page,uchar c)
	MOVRA	r0x1059
	MOVAR	STK00
	MOVRA	r0x105A
	MOVAR	STK01
	MOVRA	r0x105B
;	.line	419; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗计数器
	clrwdt
;	.line	420; "3S4SVoltmeter2.c"	LCD_set_XY(row*6, page);// 列，页 
	MOVAI	0x06
	MOVRA	STK00
	MOVAR	r0x1059
	CALL	__mulchar
	MOVRA	r0x105C
	MOVAR	r0x105A
	MOVRA	STK00
	MOVAR	r0x105C
	CALL	_LCD_set_XY
;	.line	421; "3S4SVoltmeter2.c"	for(i=0; i<5;i++) 
	MOVAI	0x05
	MOVRA	STK00
	MOVAR	r0x105B
	CALL	__mulchar
	MOVRA	r0x1059
	CLRR	r0x105A
;;unsigned compare: left < lit(0x5=5), size=1
_00232_DS_
	MOVAI	0x05
	RSUBAR	r0x105A
	JBCLR	PFLAG,0
	GOTO	_00235_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	423; "3S4SVoltmeter2.c"	LCD_write_byte(shuzi57[c*5+i],1); 
	MOVAR	r0x105A
	ADDAR	r0x1059
	MOVRA	r0x105B
	MOVAR	r0x105B
	ADDAI	(_shuzi57 + 0)
	MOVRA	r0x105B
	MOVAI	high (_shuzi57 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x105C
	MOVAR	r0x105B
	MOVRA	STK01
	MOVAR	r0x105C
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x105D
	MOVAI	0x01
	MOVRA	STK00
	MOVAR	r0x105D
	CALL	_LCD_write_byte
;	.line	421; "3S4SVoltmeter2.c"	for(i=0; i<5;i++) 
	INCR	r0x105A
	GOTO	_00232_DS_
_00235_DS_
;	.line	425; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗计数器     	
	clrwdt
	RETURN	
; exit point of _LCD_write_shu57

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_clear	;Function start
; 2 exit points
;has an exit
;functions called:
;   _LCD_set_XY
;   _LCD_write_byte
;   _LCD_set_XY
;   _LCD_write_byte
;3 compiler assigned registers:
;   STK00
;   r0x105E
;   r0x105F
;; Starting pCode block
_LCD_clear	;Function start
; 2 exit points
;	.line	401; "3S4SVoltmeter2.c"	LCD_set_XY(0,0);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_set_XY
;	.line	402; "3S4SVoltmeter2.c"	for(t=0;t<6;t++)
	CLRR	r0x105E
;;unsigned compare: left < lit(0x6=6), size=1
_00223_DS_
	MOVAI	0x06
	RSUBAR	r0x105E
	JBCLR	PFLAG,0
	GOTO	_00227_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	404; "3S4SVoltmeter2.c"	for(k=0;k<84;k++)
	CLRR	r0x105F
;;unsigned compare: left < lit(0x54=84), size=1
_00219_DS_
	MOVAI	0x54
	RSUBAR	r0x105F
	JBCLR	PFLAG,0
	GOTO	_00225_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	406; "3S4SVoltmeter2.c"	LCD_write_byte(0x00,1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_LCD_write_byte
;	.line	407; "3S4SVoltmeter2.c"	ClrWdt();//清看门狗计数器     	   	   	
	clrwdt
;	.line	404; "3S4SVoltmeter2.c"	for(k=0;k<84;k++)
	INCR	r0x105F
	GOTO	_00219_DS_
_00225_DS_
;	.line	402; "3S4SVoltmeter2.c"	for(t=0;t<6;t++)
	INCR	r0x105E
	GOTO	_00223_DS_
_00227_DS_
	RETURN	
; exit point of _LCD_clear

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_set_XY	;Function start
; 2 exit points
;has an exit
;functions called:
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;3 compiler assigned registers:
;   r0x1050
;   STK00
;   r0x1051
;; Starting pCode block
_LCD_set_XY	;Function start
; 2 exit points
;	.line	388; "3S4SVoltmeter2.c"	void LCD_set_XY(unsigned char X, unsigned char Y)
	MOVRA	r0x1050
	MOVAR	STK00
	MOVRA	r0x1051
;	.line	390; "3S4SVoltmeter2.c"	LCD_write_byte(0x40 | Y, 0);// column
	BSET	r0x1051,6
	MOVAI	0x00
	MOVRA	STK00
	MOVAR	r0x1051
	CALL	_LCD_write_byte
;	.line	391; "3S4SVoltmeter2.c"	LCD_write_byte(0x80 | X, 0);// row
	BSET	r0x1050,7
	MOVAI	0x00
	MOVRA	STK00
	MOVAR	r0x1050
	CALL	_LCD_write_byte
	RETURN	
; exit point of _LCD_set_XY

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_init	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delay1mS_1M
;   _Delay1mS_1M
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;   _Delay1mS_1M
;   _Delay1mS_1M
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;   _LCD_write_byte
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_LCD_init	;Function start
; 2 exit points
;	.line	372; "3S4SVoltmeter2.c"	SCE_H;
	BCLR	_OEP1bits,7
	BSET	_PUP1bits,7
;	.line	373; "3S4SVoltmeter2.c"	RES_H;
	BCLR	_OEP1bits,4
	BSET	_PUP1bits,4
;	.line	374; "3S4SVoltmeter2.c"	Delay1mS_1M(1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
;	.line	375; "3S4SVoltmeter2.c"	RES_L;     	
	BSET	_OEP1bits,4
	BCLR	_IOP1bits,4
;	.line	376; "3S4SVoltmeter2.c"	Delay1mS_1M(1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Delay1mS_1M
;	.line	377; "3S4SVoltmeter2.c"	RES_H;
	BCLR	_OEP1bits,4
	BSET	_PUP1bits,4
;	.line	378; "3S4SVoltmeter2.c"	LCD_write_byte(0x21,0);//初始化Lcd,功能设定使用扩充指令
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x21
	CALL	_LCD_write_byte
;	.line	379; "3S4SVoltmeter2.c"	LCD_write_byte(0xC6,0);//设定液晶偏置电压(高--低）
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0xc6
	CALL	_LCD_write_byte
;	.line	380; "3S4SVoltmeter2.c"	LCD_write_byte(0x20,0);//使用基本指令
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x20
	CALL	_LCD_write_byte
;	.line	381; "3S4SVoltmeter2.c"	LCD_write_byte(0x0C,0);//设定显示模式，正常显示
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x0c
	CALL	_LCD_write_byte
	RETURN	
; exit point of _LCD_init

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_write_byte	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x104E
;   STK00
;   r0x104F
;; Starting pCode block
_LCD_write_byte	;Function start
; 2 exit points
;	.line	343; "3S4SVoltmeter2.c"	void LCD_write_byte(unsigned char dt, unsigned char command)
	MOVRA	r0x104E
	MOVAR	STK00
	MOVRA	r0x104F
;	.line	346; "3S4SVoltmeter2.c"	SCE_L;
	BSET	_OEP1bits,7
	BCLR	_IOP1bits,7
;	.line	347; "3S4SVoltmeter2.c"	if(command)
	MOVAI	0x00
	ORAR	r0x104F
	JBCLR	PFLAG,2
	GOTO	_00192_DS_
;	.line	348; "3S4SVoltmeter2.c"	{ DC_H;}
	BCLR	_OEP0bits,0
	BSET	_PUP0bits,0
	GOTO	_00206_DS_
_00192_DS_
;	.line	350; "3S4SVoltmeter2.c"	{ DC_L;}  	
	BSET	_OEP0bits,0
	BCLR	_IOP0bits,0
_00206_DS_
;	.line	351; "3S4SVoltmeter2.c"	for(i=0;i<8;i++)
	CLRR	r0x104F
;;unsigned compare: left < lit(0x8=8), size=1
_00197_DS_
	MOVAI	0x08
	RSUBAR	r0x104F
	JBCLR	PFLAG,0
	GOTO	_00200_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	353; "3S4SVoltmeter2.c"	if(dt&0x80)
	JBSET	r0x104E,7
	GOTO	_00195_DS_
;	.line	354; "3S4SVoltmeter2.c"	{SDIN_H;}
	BCLR	_OEP0bits,3
	BSET	_PUP0bits,3
	GOTO	_00196_DS_
_00195_DS_
;	.line	356; "3S4SVoltmeter2.c"	{SDIN_L;}
	BSET	_OEP0bits,3
	BCLR	_IOP0bits,3
_00196_DS_
;	.line	357; "3S4SVoltmeter2.c"	dt=dt<<1;  	   	
	BCLR	PFLAG,0
	RLR	r0x104E
;	.line	358; "3S4SVoltmeter2.c"	SCLK_L;
	BSET	_OEP0bits,4
	BCLR	_IOP0bits,4
;	.line	359; "3S4SVoltmeter2.c"	Nop(); 	   	
	nop
;	.line	360; "3S4SVoltmeter2.c"	SCLK_H; 
	BCLR	_OEP0bits,4
	BSET	_PUP0bits,4
;	.line	351; "3S4SVoltmeter2.c"	for(i=0;i<8;i++)
	INCR	r0x104F
	GOTO	_00197_DS_
_00200_DS_
;	.line	362; "3S4SVoltmeter2.c"	DC_H;  	
	BCLR	_OEP0bits,0
	BSET	_PUP0bits,0
;	.line	363; "3S4SVoltmeter2.c"	SCE_H; 	
	BCLR	_OEP1bits,7
	BSET	_PUP1bits,7
;	.line	364; "3S4SVoltmeter2.c"	SDIN_H;
	BCLR	_OEP0bits,3
	BSET	_PUP0bits,3
	RETURN	
; exit point of _LCD_write_byte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _EEPROM_Write	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_EEPROM_Write	;Function start
; 2 exit points
;	.line	321; "3S4SVoltmeter2.c"	void   	       	   	   	EEPROM_Write(uchar 	Address,uchar  	Data)//EEPROM写程序
	MOVRA	_EEAR
	MOVAR	STK00
	MOVRA	_EEDR
;	.line	325; "3S4SVoltmeter2.c"	EEPROM_EEMASK_Set;//解锁
	MOVAI	0x5a
	MOVRA	_EEMASK
	MOVAI	0xa5
	MOVRA	_EEMASK
;	.line	326; "3S4SVoltmeter2.c"	EEPROM_Write_Data;//写数据
	BSET	_EECRbits,6
;	.line	327; "3S4SVoltmeter2.c"	EEPROM_Start_Run;//开始读写EEPROM
	BSET	_EECRbits,7
;	.line	328; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	329; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	330; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	331; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	332; "3S4SVoltmeter2.c"	Nop();//防止时序错误 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	           	
	nop
	RETURN	
; exit point of _EEPROM_Write

;***
;  pBlock Stats: dbName = C
;***
;entry:  _EEPROM_Read	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x103D
;; Starting pCode block
_EEPROM_Read	;Function start
; 2 exit points
;	.line	304; "3S4SVoltmeter2.c"	uchar      EEPROM_Read(uchar   	Address)//EEPROM读程序
	MOVRA	_EEAR
;	.line	308; "3S4SVoltmeter2.c"	EEPROM_EEMASK_Set;//解锁 	   	   
	MOVAI	0x5a
	MOVRA	_EEMASK
	MOVAI	0xa5
	MOVRA	_EEMASK
;	.line	309; "3S4SVoltmeter2.c"	EEPROM_Read_Data;//读数据
	BCLR	_EECRbits,6
;	.line	310; "3S4SVoltmeter2.c"	EEPROM_Start_Run;//开始读写EEPROM
	BSET	_EECRbits,7
;	.line	311; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	312; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	313; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	314; "3S4SVoltmeter2.c"	Nop();
	nop
;	.line	315; "3S4SVoltmeter2.c"	Nop();//防止时序错误 	
	nop
;	.line	316; "3S4SVoltmeter2.c"	EEPROM_Data_Temp=EEPROM_EEDR_Data; 	
	MOVAR	_EEDR
	MOVRA	r0x103D
;	.line	317; "3S4SVoltmeter2.c"	return EEPROM_Data_Temp;      	
	MOVAR	r0x103D
	RETURN	
; exit point of _EEPROM_Read


;	code size estimation:
;	 2093+    0 =  2093 instructions ( 4186 byte)

	end
