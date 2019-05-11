/*
 * File:   main.c
 * Author: John McNelly
 *
 * Created on May 11, 2019, 1:13 AM
 */

// PIC12F752 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC0 = INT      // FOSC: Oscillator Selection bit (Internal oscillator mode.  I/O function on RA5/CLKIN)
#pragma config WDTE = ON        // Watchdog Timer Enable bit (Watchdog Timer enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (Power-up Timer disabled)
#pragma config MCLRE = ON       // MCLR/VPP Pin Function Select bit (MCLR pin is MCLR function with internal weak pullup)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config BOREN = EN       // Brown-out Reset Enable bits (BOR enabled)
#pragma config WRT = OFF        // Flash Program Memory Self Write Enable bit (Flash self-write protection off)
#pragma config CLKOUTEN = OFF   // Clock Out Enable bit (CLKOUT function disabled.  CLKOUT pin acts as I/O)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

void main(void) {
  ANSELAbits.ANSA4 = 0;
  TRISAbits.TRISA4 = 0;
  LATAbits.LATA4 = 1;
  
  return;
}
