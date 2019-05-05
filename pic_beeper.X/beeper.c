#include "beeper.h"

#define HAPPY_BIRTHDAY // song selection
#include "song.h"

#define MSEC_TO_SEC 1000
#define MSEC_TO_PR2_COUNTS 125 // prescaler*postscaler=16, 0.5us clock ticks
#define MSEC_TO_LFINTOSC_CLOCK_TICKS 31
#define TMR2_PRESCALER 4
#define TMR2_POSTSCALER 4
#define TMR1_PRESCALER 8

static uint8_t note_index = 0;

void init_beeper() {
  // set pin 5 (RA2) as digital output
  ANSELA &= ~(0b1 << 2); // disable analog on RA2
  TRISA &= ~(0b1 << 2); // set RA2 as output
  LATA |= (0b1 << 2); // set RA2 HIGH
  
  // configure TMR2 (note frequency timer)
  // clock frequency is 8MHz (2MHz instruction clock), want 2048Hz tone
  // 1 clock pulse is 0.5 usec
  // want waveform period to be 488 usec (976 clock pulses)
  T2CON = 0b00011011; // TMR2 postscaler=1:4, TMR2 off, prescaler=4
  PIE1 |= (0b1 << 1); // enable TMR2 interrupt
  
  // configure TMR1 (note duration timer)
  T1CON |= (0b11 << 6); // use LFINTOSC
  T1CON |= (0b11 << 4); // prescaler=8
  PIE1 |= (0b1); // enable TMR1 interrupt
  
  // configure interrupts
  INTCON |= (0b11 << 6); // enable global and peripheral interrupts
  
  T1CONbits.TMR1ON = 1; // turn on timer 1 (note duration timer)
}

void beeper_set_freq_hz(uint16_t freq) {
  // set PR2 to half-period
  PR2 = ((uint16_t)MSEC_TO_PR2_COUNTS / 2 * 1000 / freq) - 2;
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
    PIR1bits.TMR2IF = 0; // clear flag
    LATAbits.LATA2 = ~LATAbits.LATA2;
  }
  
  if (PIR1bits.TMR1IF) {
    // interrupt caused by TMR1
    PIR1bits.TMR1IF = 0; // clear flag
    uint8_t curr_note_num = note_index % 2 ? 
      /* odd: top 4 bits */ (note_num[note_index/2]) >> 4: 
      /* even: bottom 4 bits */(note_num[note_index/2]) & 0xF;
    beeper_set_freq_hz(note_num_to_freq_hz[curr_note_num] + NOTE_FREQ_OFFSET);
    uint16_t note_dur_clock_ticks = note_dur[note_index] * NOTE_DUR_TO_MSEC / TMR1_PRESCALER * MSEC_TO_LFINTOSC_CLOCK_TICKS;
    note_dur_clock_ticks = 65535 - note_dur_clock_ticks; // time is overflow time
    TMR1H = note_dur_clock_ticks >> 8;
    TMR1L = note_dur_clock_ticks & 0x00FF;
    
    note_index++;
  }
}