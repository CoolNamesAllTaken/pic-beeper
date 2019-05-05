#include "beeper.h"

#define MSEC_TO_SEC 1000
#define MSEC_TO_PR2_COUNTS 125 // prescaler*postscaler=16, 0.5us clock ticks
#define MSEC_TO_TEMP_SENSE_OSC_CLOCK_TICKS 16 // 16kHz temp sense clock
#define TMR2_PRESCALER 4
#define TMR2_POSTSCALER 4
#define TMR1_PRESCALER 8

static uint8_t duration_divisor = 6;
static uint8_t freq_multiplier = 6; // must be even because music things

static char playing_note = 0;

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
  T1CON |= (0b11 << 6); // use TEMP_SENSE_OSC
  T1CON |= (0b11 << 4); // prescaler=8
  PIE1 |= (0b1); // enable TMR1 interrupt
  
  // configure interrupts
  INTCON |= (0b11 << 6); // enable global and peripheral interrupts
}

/**
 * Plays a specified note for a specified time interval.
 * @param freq - Frequency of note in Hz
 * @param duration - Duration of note in msec, up to 2000 msec allowed
 */
void beeper_play_tone(uint16_t freq, uint16_t duration) {
  beeper_set_freq_hz(freq);
  beeper_on();
  beeper_wait_duration(duration);
  beeper_off();
}

void beeper_wait_duration(uint16_t duration) {
  duration /= duration_divisor;
  uint16_t note_dur_clock_ticks = duration * MSEC_TO_TEMP_SENSE_OSC_CLOCK_TICKS / TMR1_PRESCALER;
  note_dur_clock_ticks = 65535 - note_dur_clock_ticks; // timer interrupts on overflow
  TMR1H = note_dur_clock_ticks >> 8;
  TMR1L = note_dur_clock_ticks & 0x00FF;
  playing_note = 1;
  T1CONbits.TMR1ON = 1; // turn on timer 1
  while (playing_note) {/* wait for interrupt to fire and clear playing_note */}
}

void beeper_set_freq_multiplier(uint8_t freq_multiplier_in) {
  freq_multiplier = freq_multiplier_in;
}

void beeper_set_duration_divisor(uint8_t duration_divisor_in) {
  duration_divisor = duration_divisor_in;
}

static void beeper_set_freq_hz(uint16_t freq) {
  freq *= freq_multiplier;
  // set PR2 to half-period
  PR2 = ((uint16_t)MSEC_TO_PR2_COUNTS / 2 * 1000 / freq) - 2;
}

static void beeper_on() {
  T2CONbits.TMR2ON = 1; // turn on TMR2
}

static void beeper_off() {
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
    playing_note = 0;
    T1CONbits.TMR1ON = 0; // turn off timer 1
  }
}