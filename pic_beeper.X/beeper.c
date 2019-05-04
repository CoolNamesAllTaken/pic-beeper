#include "beeper.h"

#define SEC_TO_CLOCK_TICKS 2000000
#define TMR2_PRESCALER 4
#define TMR2_POSTSCALER 16

void init_beeper() {
  // set pin 5 (RA2) as digital output
  ANSELA &= ~(0b1 << 2); // disable analog on RA2
  TRISA &= ~(0b1 << 2); // set RA2 as output
  LATA |= (0b1 << 2); // set RA2 HIGH
  
  // configure TMR2
  // clock frequency is 8MHz (2MHz instruction clock), want 2048Hz tone
  // 1 clock pulse is 0.5 usec
  // want waveform period to be 488 usec (976 clock pulses)
  T2CON = 0b01111011; // TMR2 postscaler=1:16, TMR2 off, prescaler=4
  PR2 = 2; // set TMR2 half-period 8 * 4 * 16 = 2240
  
  // configure interrupts
  INTCON |= (0b11 << 6); // enable global and peripheral interrupts
  PIE1 |= (0b1 << 1); // enable TMR2 interrupt
}

void beeper_set_freq_hz(int freq) {
  // set PR2 to half-period
  PR2 = SEC_TO_CLOCK_TICKS / 2 / TMR2_PRESCALER / TMR2_POSTSCALER / freq;
}

void beeper_on() {
  T2CONbits.TMR2ON = 1; // turn on TMR2
}

void beeper_off() {
  T2CONbits.TMR2ON = 0; // turn off TMR2
}

void __interrupt() ISR(void) {
  if (PIR1bits.TMR2IF) {
    // interrupt caused by TMR2
    PIR1bits.TMR2IF = 0;
    LATAbits.LATA2 = ~LATAbits.LATA2;
  }
}