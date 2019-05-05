# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2








# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\xc.h" 2 3




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 1 3




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\htc.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\xc.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\htc.h" 2 3
# 5 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 2 3








# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic_chip_select.h" 1 3
# 529 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic_chip_select.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\__at.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 2 3








extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP0 :1;
        unsigned RP1 :1;
        unsigned IRP :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 150 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 207 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x008)));

__asm("IOCAF equ 08h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x008)));
# 257 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");




extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INTF :1;
        unsigned T0IF :1;
        unsigned IOCIE :1;
        unsigned INTE :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 326 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned HLTMR1IF :1;
        unsigned :3;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 371 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned CCP1IF :1;
        unsigned :1;
        unsigned COG1IF :1;
        unsigned :1;
        unsigned C1IF :1;
        unsigned C2IF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 411 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00F)));

__asm("TMR1 equ 0Fh");




extern volatile unsigned char TMR1L __attribute__((address(0x00F)));

__asm("TMR1L equ 0Fh");




extern volatile unsigned char TMR1H __attribute__((address(0x010)));

__asm("TMR1H equ 010h");




extern volatile unsigned char T1CON __attribute__((address(0x011)));

__asm("T1CON equ 011h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x011)));
# 499 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x012)));

__asm("T1GCON equ 012h");


typedef union {
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned :1;
        unsigned T1GGO :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x012)));
# 576 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x013)));

__asm("CCPR1 equ 013h");




extern volatile unsigned char CCPR1L __attribute__((address(0x013)));

__asm("CCPR1L equ 013h");




extern volatile unsigned char CCPR1H __attribute__((address(0x014)));

__asm("CCPR1H equ 014h");




extern volatile unsigned char CCP1CON __attribute__((address(0x015)));

__asm("CCP1CON equ 015h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x015)));
# 661 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x01C)));

__asm("ADRES equ 01Ch");




extern volatile unsigned char ADRESL __attribute__((address(0x01C)));

__asm("ADRESL equ 01Ch");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x01C)));
# 688 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01D)));

__asm("ADRESH equ 01Dh");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x01D)));
# 708 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x01E)));

__asm("ADCON0 equ 01Eh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :4;
        unsigned VCFG :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned :2;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01E)));
# 779 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x01F)));

__asm("ADCON1 equ 01Fh");


typedef union {
    struct {
        unsigned :4;
        unsigned ADCS :3;
    };
    struct {
        unsigned :4;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x01F)));
# 821 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRAPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 891 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 941 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x088)));

__asm("IOCAP equ 088h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x088)));
# 991 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned HLTMR1IE :1;
        unsigned :3;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 1036 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned CCP1IE :1;
        unsigned :1;
        unsigned COG1IE :1;
        unsigned :1;
        unsigned C1IE :1;
        unsigned C2IE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 1076 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x08F)));

__asm("OSCCON equ 08Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned LTS :1;
        unsigned HTS :1;
        unsigned :1;
        unsigned IRCF :2;
    };
    struct {
        unsigned :4;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x08F)));
# 1125 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x090)));

__asm("FVRCON equ 090h");


typedef union {
    struct {
        unsigned :4;
        unsigned FVRBUFSS :1;
        unsigned FVRBUFEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x090)));
# 1164 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char DACCON0 __attribute__((address(0x091)));

__asm("DACCON0 equ 091h");


typedef union {
    struct {
        unsigned :2;
        unsigned DACPSS0 :1;
        unsigned :2;
        unsigned DACOE :1;
        unsigned DACRNG :1;
        unsigned DACEN :1;
    };
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __attribute__((address(0x091)));
# 1204 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char DACCON1 __attribute__((address(0x092)));

__asm("DACCON1 equ 092h");


typedef union {
    struct {
        unsigned DACR :5;
    };
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
    };
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __attribute__((address(0x092)));
# 1256 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x09B)));

__asm("CM2CON0 equ 09Bh");


extern volatile unsigned char C2CON0 __attribute__((address(0x09B)));

__asm("C2CON0 equ 09Bh");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned C2ZLF :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x09B)));
# 1321 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned C2ZLF :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} C2CON0bits_t;
extern volatile C2CON0bits_t C2CON0bits __attribute__((address(0x09B)));
# 1378 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x09C)));

__asm("CM2CON1 equ 09Ch");


extern volatile unsigned char C2CON1 __attribute__((address(0x09C)));

__asm("C2CON1 equ 09Ch");


typedef union {
    struct {
        unsigned C2NCH0 :1;
        unsigned :3;
        unsigned C2PCH :2;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned :4;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x09C)));
# 1435 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
typedef union {
    struct {
        unsigned C2NCH0 :1;
        unsigned :3;
        unsigned C2PCH :2;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned :4;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
    };
} C2CON1bits_t;
extern volatile C2CON1bits_t C2CON1bits __attribute__((address(0x09C)));
# 1484 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x09D)));

__asm("CM1CON0 equ 09Dh");


extern volatile unsigned char C1CON0 __attribute__((address(0x09D)));

__asm("C1CON0 equ 09Dh");


typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned C1ZLF :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x09D)));
# 1549 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned C1ZLF :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} C1CON0bits_t;
extern volatile C1CON0bits_t C1CON0bits __attribute__((address(0x09D)));
# 1606 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x09E)));

__asm("CM1CON1 equ 09Eh");


extern volatile unsigned char C1CON1 __attribute__((address(0x09E)));

__asm("C1CON1 equ 09Eh");


typedef union {
    struct {
        unsigned C1NCH0 :1;
        unsigned :3;
        unsigned C1PCH :2;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned :4;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x09E)));
# 1663 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
typedef union {
    struct {
        unsigned C1NCH0 :1;
        unsigned :3;
        unsigned C1PCH :2;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned :4;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
    };
} C1CON1bits_t;
extern volatile C1CON1bits_t C1CON1bits __attribute__((address(0x09E)));
# 1712 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x09F)));

__asm("CMOUT equ 09Fh");


extern volatile unsigned char MCOUT __attribute__((address(0x09F)));

__asm("MCOUT equ 09Fh");


typedef union {
    struct {
        unsigned MCOUT1 :1;
        unsigned MCOUT2 :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x09F)));
# 1741 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
typedef union {
    struct {
        unsigned MCOUT1 :1;
        unsigned MCOUT2 :1;
    };
} MCOUTbits_t;
extern volatile MCOUTbits_t MCOUTbits __attribute__((address(0x09F)));
# 1762 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char LATA __attribute__((address(0x105)));

__asm("LATA equ 0105h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x105)));
# 1807 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x108)));

__asm("IOCAN equ 0108h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x108)));
# 1857 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x10C)));

__asm("WPUA equ 010Ch");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x10C)));
# 1907 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x10D)));

__asm("SLRCONA equ 010Dh");


typedef union {
    struct {
        unsigned SLRA0 :1;
        unsigned :1;
        unsigned SLRA2 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x10D)));
# 1934 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PCON __attribute__((address(0x10F)));

__asm("PCON equ 010Fh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x10F)));
# 1960 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x110)));

__asm("TMR2 equ 0110h");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x110)));
# 1980 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x111)));

__asm("PR2 equ 0111h");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x111)));
# 2000 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x112)));

__asm("T2CON equ 0112h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned T2OUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x112)));
# 2071 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char HLTMR1 __attribute__((address(0x113)));

__asm("HLTMR1 equ 0113h");


typedef union {
    struct {
        unsigned HLTMR1 :8;
    };
} HLTMR1bits_t;
extern volatile HLTMR1bits_t HLTMR1bits __attribute__((address(0x113)));
# 2091 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char HLTPR1 __attribute__((address(0x114)));

__asm("HLTPR1 equ 0114h");


typedef union {
    struct {
        unsigned HLTPR1 :8;
    };
} HLTPR1bits_t;
extern volatile HLTPR1bits_t HLTPR1bits __attribute__((address(0x114)));
# 2111 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char HLT1CON0 __attribute__((address(0x115)));

__asm("HLT1CON0 equ 0115h");


typedef union {
    struct {
        unsigned H1CKPS :2;
        unsigned H1ON :1;
        unsigned H1OUTPS :4;
    };
    struct {
        unsigned H1CKPS0 :1;
        unsigned H1CKPS1 :1;
        unsigned :1;
        unsigned H1OUTPS0 :1;
        unsigned H1OUTPS1 :1;
        unsigned H1OUTPS2 :1;
        unsigned H1OUTPS3 :1;
    };
} HLT1CON0bits_t;
extern volatile HLT1CON0bits_t HLT1CON0bits __attribute__((address(0x115)));
# 2182 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char HLT1CON1 __attribute__((address(0x116)));

__asm("HLT1CON1 equ 0116h");


typedef union {
    struct {
        unsigned H1REREN :1;
        unsigned H1FEREN :1;
        unsigned H1ERS :3;
    };
    struct {
        unsigned :2;
        unsigned H1ERS0 :1;
        unsigned H1ERS1 :1;
        unsigned H1ERS2 :1;
    };
} HLT1CON1bits_t;
extern volatile HLT1CON1bits_t HLT1CON1bits __attribute__((address(0x116)));
# 2235 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x185)));

__asm("ANSELA equ 0185h");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x185)));
# 2280 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char APFCON __attribute__((address(0x188)));

__asm("APFCON equ 0188h");


typedef union {
    struct {
        unsigned COG1O0SEL :1;
        unsigned COG1O1SEL :1;
        unsigned COG1FSEL :1;
        unsigned :1;
        unsigned T1GSEL :1;
    };
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __attribute__((address(0x188)));
# 2319 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x189)));

__asm("OSCTUNE equ 0189h");


typedef union {
    struct {
        unsigned TUN :5;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x189)));
# 2371 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PMCON1 __attribute__((address(0x18C)));

__asm("PMCON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x18C)));
# 2403 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PMCON2 __attribute__((address(0x18D)));

__asm("PMCON2 equ 018Dh");


typedef union {
    struct {
        unsigned PMCON2 :8;
    };
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __attribute__((address(0x18D)));
# 2423 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned short PMADR __attribute__((address(0x18E)));

__asm("PMADR equ 018Eh");




extern volatile unsigned char PMADRL __attribute__((address(0x18E)));

__asm("PMADRL equ 018Eh");


typedef union {
    struct {
        unsigned PMADRL :8;
    };
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __attribute__((address(0x18E)));
# 2450 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PMADRH __attribute__((address(0x18F)));

__asm("PMADRH equ 018Fh");


typedef union {
    struct {
        unsigned PMADRH :2;
    };
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __attribute__((address(0x18F)));
# 2470 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned short PMDAT __attribute__((address(0x190)));

__asm("PMDAT equ 0190h");




extern volatile unsigned char PMDATL __attribute__((address(0x190)));

__asm("PMDATL equ 0190h");


typedef union {
    struct {
        unsigned PMDATL :8;
    };
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __attribute__((address(0x190)));
# 2497 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char PMDATH __attribute__((address(0x191)));

__asm("PMDATH equ 0191h");


typedef union {
    struct {
        unsigned PMDATH :6;
    };
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __attribute__((address(0x191)));
# 2517 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1PH __attribute__((address(0x192)));

__asm("COG1PH equ 0192h");


typedef union {
    struct {
        unsigned G1PH :4;
    };
    struct {
        unsigned G1PH0 :1;
        unsigned G1PH1 :1;
        unsigned G1PH2 :1;
        unsigned G1PH3 :1;
    };
} COG1PHbits_t;
extern volatile COG1PHbits_t COG1PHbits __attribute__((address(0x192)));
# 2563 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1BLK __attribute__((address(0x193)));

__asm("COG1BLK equ 0193h");


typedef union {
    struct {
        unsigned G1BLKF :4;
        unsigned G1BLKR :4;
    };
    struct {
        unsigned G1BLKF0 :1;
        unsigned G1BLKF1 :1;
        unsigned G1BLKF2 :1;
        unsigned G1BLKF3 :1;
        unsigned G1BLKR0 :1;
        unsigned G1BLKR1 :1;
        unsigned G1BLKR2 :1;
        unsigned G1BLKR3 :1;
    };
} COG1BLKbits_t;
extern volatile COG1BLKbits_t COG1BLKbits __attribute__((address(0x193)));
# 2639 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1DB __attribute__((address(0x194)));

__asm("COG1DB equ 0194h");


typedef union {
    struct {
        unsigned G1DBF :4;
        unsigned G1DBR :4;
    };
    struct {
        unsigned G1DBF0 :1;
        unsigned G1DBF1 :1;
        unsigned G1DBF2 :1;
        unsigned G1DBF3 :1;
        unsigned G1BDR0 :1;
        unsigned G1BDR1 :1;
        unsigned G1BDR2 :1;
        unsigned G1BDR3 :1;
    };
} COG1DBbits_t;
extern volatile COG1DBbits_t COG1DBbits __attribute__((address(0x194)));
# 2715 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1CON0 __attribute__((address(0x195)));

__asm("COG1CON0 equ 0195h");


typedef union {
    struct {
        unsigned G1CS :2;
        unsigned G1LD :1;
        unsigned G1POL0 :1;
        unsigned G1POL1 :1;
        unsigned G1OE0 :1;
        unsigned G1OE1 :1;
        unsigned G1EN :1;
    };
    struct {
        unsigned G1CS0 :1;
        unsigned G1CS1 :1;
    };
} COG1CON0bits_t;
extern volatile COG1CON0bits_t COG1CON0bits __attribute__((address(0x195)));
# 2785 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1CON1 __attribute__((address(0x196)));

__asm("COG1CON1 equ 0196h");


typedef union {
    struct {
        unsigned G1RS :3;
        unsigned G1FS :3;
        unsigned G1RSIM :1;
        unsigned G1FSIM :1;
    };
    struct {
        unsigned G1RS0 :1;
        unsigned G1RS1 :1;
        unsigned G1RS2 :1;
        unsigned G1FS0 :1;
        unsigned G1FS1 :1;
        unsigned G1FS2 :1;
    };
} COG1CON1bits_t;
extern volatile COG1CON1bits_t COG1CON1bits __attribute__((address(0x196)));
# 2861 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile unsigned char COG1ASD __attribute__((address(0x197)));

__asm("COG1ASD equ 0197h");


typedef union {
    struct {
        unsigned G1ASDSFLT :1;
        unsigned G1ASDSC1 :1;
        unsigned G1ASDSC2 :1;
        unsigned G1ASDSHLT :1;
        unsigned G1ASDL0 :1;
        unsigned G1ASDL1 :1;
        unsigned G1ARSEN :1;
        unsigned G1ASDE :1;
    };
} COG1ASDbits_t;
extern volatile COG1ASDbits_t COG1ASDbits __attribute__((address(0x197)));
# 2929 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic12f752.h" 3
extern volatile __bit ADCS0 __attribute__((address(0xFC)));


extern volatile __bit ADCS1 __attribute__((address(0xFD)));


extern volatile __bit ADCS2 __attribute__((address(0xFE)));


extern volatile __bit ADFM __attribute__((address(0xF7)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF0)));


extern volatile __bit ANSA0 __attribute__((address(0xC28)));


extern volatile __bit ANSA1 __attribute__((address(0xC29)));


extern volatile __bit ANSA2 __attribute__((address(0xC2A)));


extern volatile __bit ANSA4 __attribute__((address(0xC2C)));


extern volatile __bit ANSA5 __attribute__((address(0xC2D)));


extern volatile __bit C1HYS __attribute__((address(0x4E9)));


extern volatile __bit C1IE __attribute__((address(0x46C)));


extern volatile __bit C1IF __attribute__((address(0x6C)));


extern volatile __bit C1INTN __attribute__((address(0x4F6)));


extern volatile __bit C1INTP __attribute__((address(0x4F7)));


extern volatile __bit C1NCH0 __attribute__((address(0x4F0)));


extern volatile __bit C1OE __attribute__((address(0x4ED)));


extern volatile __bit C1ON __attribute__((address(0x4EF)));


extern volatile __bit C1OUT __attribute__((address(0x4EE)));


extern volatile __bit C1PCH0 __attribute__((address(0x4F4)));


extern volatile __bit C1PCH1 __attribute__((address(0x4F5)));


extern volatile __bit C1POL __attribute__((address(0x4EC)));


extern volatile __bit C1SP __attribute__((address(0x4EA)));


extern volatile __bit C1SYNC __attribute__((address(0x4E8)));


extern volatile __bit C1ZLF __attribute__((address(0x4EB)));


extern volatile __bit C2HYS __attribute__((address(0x4D9)));


extern volatile __bit C2IE __attribute__((address(0x46D)));


extern volatile __bit C2IF __attribute__((address(0x6D)));


extern volatile __bit C2INTN __attribute__((address(0x4E6)));


extern volatile __bit C2INTP __attribute__((address(0x4E7)));


extern volatile __bit C2NCH0 __attribute__((address(0x4E0)));


extern volatile __bit C2OE __attribute__((address(0x4DD)));


extern volatile __bit C2ON __attribute__((address(0x4DF)));


extern volatile __bit C2OUT __attribute__((address(0x4DE)));


extern volatile __bit C2PCH0 __attribute__((address(0x4E4)));


extern volatile __bit C2PCH1 __attribute__((address(0x4E5)));


extern volatile __bit C2POL __attribute__((address(0x4DC)));


extern volatile __bit C2SP __attribute__((address(0x4DA)));


extern volatile __bit C2SYNC __attribute__((address(0x4D8)));


extern volatile __bit C2ZLF __attribute__((address(0x4DB)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x468)));


extern volatile __bit CCP1IF __attribute__((address(0x68)));


extern volatile __bit CCP1M0 __attribute__((address(0xA8)));


extern volatile __bit CCP1M1 __attribute__((address(0xA9)));


extern volatile __bit CCP1M2 __attribute__((address(0xAA)));


extern volatile __bit CCP1M3 __attribute__((address(0xAB)));


extern volatile __bit CHS0 __attribute__((address(0xF2)));


extern volatile __bit CHS1 __attribute__((address(0xF3)));


extern volatile __bit CHS2 __attribute__((address(0xF4)));


extern volatile __bit CHS3 __attribute__((address(0xF5)));


extern volatile __bit COG1FSEL __attribute__((address(0xC42)));


extern volatile __bit COG1IE __attribute__((address(0x46A)));


extern volatile __bit COG1IF __attribute__((address(0x6A)));


extern volatile __bit COG1O0SEL __attribute__((address(0xC40)));


extern volatile __bit COG1O1SEL __attribute__((address(0xC41)));


extern volatile __bit DACEN __attribute__((address(0x48F)));


extern volatile __bit DACOE __attribute__((address(0x48D)));


extern volatile __bit DACPSS0 __attribute__((address(0x48A)));


extern volatile __bit DACR0 __attribute__((address(0x490)));


extern volatile __bit DACR1 __attribute__((address(0x491)));


extern volatile __bit DACR2 __attribute__((address(0x492)));


extern volatile __bit DACR3 __attribute__((address(0x493)));


extern volatile __bit DACR4 __attribute__((address(0x494)));


extern volatile __bit DACRNG __attribute__((address(0x48E)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC1B0 __attribute__((address(0xAC)));


extern volatile __bit DC1B1 __attribute__((address(0xAD)));


extern volatile __bit FVRBUFEN __attribute__((address(0x485)));


extern volatile __bit FVRBUFSS __attribute__((address(0x484)));


extern volatile __bit FVREN __attribute__((address(0x487)));


extern volatile __bit FVRRDY __attribute__((address(0x486)));


extern volatile __bit G1ARSEN __attribute__((address(0xCBE)));


extern volatile __bit G1ASDE __attribute__((address(0xCBF)));


extern volatile __bit G1ASDL0 __attribute__((address(0xCBC)));


extern volatile __bit G1ASDL1 __attribute__((address(0xCBD)));


extern volatile __bit G1ASDSC1 __attribute__((address(0xCB9)));


extern volatile __bit G1ASDSC2 __attribute__((address(0xCBA)));


extern volatile __bit G1ASDSFLT __attribute__((address(0xCB8)));


extern volatile __bit G1ASDSHLT __attribute__((address(0xCBB)));


extern volatile __bit G1BDR0 __attribute__((address(0xCA4)));


extern volatile __bit G1BDR1 __attribute__((address(0xCA5)));


extern volatile __bit G1BDR2 __attribute__((address(0xCA6)));


extern volatile __bit G1BDR3 __attribute__((address(0xCA7)));


extern volatile __bit G1BLKF0 __attribute__((address(0xC98)));


extern volatile __bit G1BLKF1 __attribute__((address(0xC99)));


extern volatile __bit G1BLKF2 __attribute__((address(0xC9A)));


extern volatile __bit G1BLKF3 __attribute__((address(0xC9B)));


extern volatile __bit G1BLKR0 __attribute__((address(0xC9C)));


extern volatile __bit G1BLKR1 __attribute__((address(0xC9D)));


extern volatile __bit G1BLKR2 __attribute__((address(0xC9E)));


extern volatile __bit G1BLKR3 __attribute__((address(0xC9F)));


extern volatile __bit G1CS0 __attribute__((address(0xCA8)));


extern volatile __bit G1CS1 __attribute__((address(0xCA9)));


extern volatile __bit G1DBF0 __attribute__((address(0xCA0)));


extern volatile __bit G1DBF1 __attribute__((address(0xCA1)));


extern volatile __bit G1DBF2 __attribute__((address(0xCA2)));


extern volatile __bit G1DBF3 __attribute__((address(0xCA3)));


extern volatile __bit G1EN __attribute__((address(0xCAF)));


extern volatile __bit G1FS0 __attribute__((address(0xCB3)));


extern volatile __bit G1FS1 __attribute__((address(0xCB4)));


extern volatile __bit G1FS2 __attribute__((address(0xCB5)));


extern volatile __bit G1FSIM __attribute__((address(0xCB7)));


extern volatile __bit G1LD __attribute__((address(0xCAA)));


extern volatile __bit G1OE0 __attribute__((address(0xCAD)));


extern volatile __bit G1OE1 __attribute__((address(0xCAE)));


extern volatile __bit G1PH0 __attribute__((address(0xC90)));


extern volatile __bit G1PH1 __attribute__((address(0xC91)));


extern volatile __bit G1PH2 __attribute__((address(0xC92)));


extern volatile __bit G1PH3 __attribute__((address(0xC93)));


extern volatile __bit G1POL0 __attribute__((address(0xCAB)));


extern volatile __bit G1POL1 __attribute__((address(0xCAC)));


extern volatile __bit G1RS0 __attribute__((address(0xCB0)));


extern volatile __bit G1RS1 __attribute__((address(0xCB1)));


extern volatile __bit G1RS2 __attribute__((address(0xCB2)));


extern volatile __bit G1RSIM __attribute__((address(0xCB6)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO_nDONE __attribute__((address(0xF1)));


extern volatile __bit H1CKPS0 __attribute__((address(0x8A8)));


extern volatile __bit H1CKPS1 __attribute__((address(0x8A9)));


extern volatile __bit H1ERS0 __attribute__((address(0x8B2)));


extern volatile __bit H1ERS1 __attribute__((address(0x8B3)));


extern volatile __bit H1ERS2 __attribute__((address(0x8B4)));


extern volatile __bit H1FEREN __attribute__((address(0x8B1)));


extern volatile __bit H1ON __attribute__((address(0x8AA)));


extern volatile __bit H1OUTPS0 __attribute__((address(0x8AB)));


extern volatile __bit H1OUTPS1 __attribute__((address(0x8AC)));


extern volatile __bit H1OUTPS2 __attribute__((address(0x8AD)));


extern volatile __bit H1OUTPS3 __attribute__((address(0x8AE)));


extern volatile __bit H1REREN __attribute__((address(0x8B0)));


extern volatile __bit HLTMR1IE __attribute__((address(0x462)));


extern volatile __bit HLTMR1IF __attribute__((address(0x62)));


extern volatile __bit HTS __attribute__((address(0x47A)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCAF0 __attribute__((address(0x40)));


extern volatile __bit IOCAF1 __attribute__((address(0x41)));


extern volatile __bit IOCAF2 __attribute__((address(0x42)));


extern volatile __bit IOCAF3 __attribute__((address(0x43)));


extern volatile __bit IOCAF4 __attribute__((address(0x44)));


extern volatile __bit IOCAF5 __attribute__((address(0x45)));


extern volatile __bit IOCAN0 __attribute__((address(0x840)));


extern volatile __bit IOCAN1 __attribute__((address(0x841)));


extern volatile __bit IOCAN2 __attribute__((address(0x842)));


extern volatile __bit IOCAN3 __attribute__((address(0x843)));


extern volatile __bit IOCAN4 __attribute__((address(0x844)));


extern volatile __bit IOCAN5 __attribute__((address(0x845)));


extern volatile __bit IOCAP0 __attribute__((address(0x440)));


extern volatile __bit IOCAP1 __attribute__((address(0x441)));


extern volatile __bit IOCAP2 __attribute__((address(0x442)));


extern volatile __bit IOCAP3 __attribute__((address(0x443)));


extern volatile __bit IOCAP4 __attribute__((address(0x444)));


extern volatile __bit IOCAP5 __attribute__((address(0x445)));


extern volatile __bit IOCIE __attribute__((address(0x5B)));


extern volatile __bit IOCIF __attribute__((address(0x58)));


extern volatile __bit IRCF0 __attribute__((address(0x47C)));


extern volatile __bit IRCF1 __attribute__((address(0x47D)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit LATA0 __attribute__((address(0x828)));


extern volatile __bit LATA1 __attribute__((address(0x829)));


extern volatile __bit LATA2 __attribute__((address(0x82A)));


extern volatile __bit LATA4 __attribute__((address(0x82C)));


extern volatile __bit LATA5 __attribute__((address(0x82D)));


extern volatile __bit LTS __attribute__((address(0x479)));


extern volatile __bit MCOUT1 __attribute__((address(0x4F8)));


extern volatile __bit MCOUT2 __attribute__((address(0x4F9)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit SLRA0 __attribute__((address(0x868)));


extern volatile __bit SLRA2 __attribute__((address(0x86A)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x8C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x8D)));


extern volatile __bit T1GGO __attribute__((address(0x93)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0x93)));


extern volatile __bit T1GPOL __attribute__((address(0x96)));


extern volatile __bit T1GSEL __attribute__((address(0xC44)));


extern volatile __bit T1GSPM __attribute__((address(0x94)));


extern volatile __bit T1GSS0 __attribute__((address(0x90)));


extern volatile __bit T1GSS1 __attribute__((address(0x91)));


extern volatile __bit T1GTM __attribute__((address(0x95)));


extern volatile __bit T1GVAL __attribute__((address(0x92)));


extern volatile __bit T2CKPS0 __attribute__((address(0x890)));


extern volatile __bit T2CKPS1 __attribute__((address(0x891)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x893)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x894)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x895)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x896)));


extern volatile __bit TMR1CS0 __attribute__((address(0x8E)));


extern volatile __bit TMR1CS1 __attribute__((address(0x8F)));


extern volatile __bit TMR1GE __attribute__((address(0x97)));


extern volatile __bit TMR1GIE __attribute__((address(0x467)));


extern volatile __bit TMR1GIF __attribute__((address(0x67)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x88)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x892)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TUN0 __attribute__((address(0xC48)));


extern volatile __bit TUN1 __attribute__((address(0xC49)));


extern volatile __bit TUN2 __attribute__((address(0xC4A)));


extern volatile __bit TUN3 __attribute__((address(0xC4B)));


extern volatile __bit TUN4 __attribute__((address(0xC4C)));


extern volatile __bit VCFG __attribute__((address(0xF6)));


extern volatile __bit WPUA0 __attribute__((address(0x860)));


extern volatile __bit WPUA1 __attribute__((address(0x861)));


extern volatile __bit WPUA2 __attribute__((address(0x862)));


extern volatile __bit WPUA3 __attribute__((address(0x863)));


extern volatile __bit WPUA4 __attribute__((address(0x864)));


extern volatile __bit WPUA5 __attribute__((address(0x865)));


extern volatile __bit WR __attribute__((address(0xC61)));


extern volatile __bit WREN __attribute__((address(0xC62)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nBOR __attribute__((address(0x878)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x879)));


extern volatile __bit nRAPU __attribute__((address(0x40F)));


extern volatile __bit nT1SYNC __attribute__((address(0x8A)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 529 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic_chip_select.h" 2 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 2 3
# 30 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\eeprom_routines.h" 1 3
# 85 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 2 3






#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 27 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\xc.h" 2 3
# 9 "main.c" 2

# 1 "./beeper.h" 1
# 12 "./beeper.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.05\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 12 "./beeper.h" 2


void init_beeper(void);

void beeper_set_freq_hz(uint16_t freq);

void beeper_on(void);
void beeper_off(void);
# 10 "main.c" 2


static int freq = 8000;

void init(void) {

  OSCCON = 0b00110000;
  while (!OSCCONbits.HTS) {}

  init_beeper();
  beeper_on();
}

void loop(void) {

  beeper_set_freq_hz(freq);
}

void main(void) {
  init();
  while(1) {
    loop();
  }
  return;
}
