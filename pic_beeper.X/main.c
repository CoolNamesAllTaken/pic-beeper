/*
 * File:   main.c
 * Author: John McNelly
 *
 * Created on May 3, 2019, 12:43 AM
 */


#include <xc.h>
#include "beeper.h"

static int freq = 8000;

void init(void) {
  // set internal clock to run on 8 MHz because why not
  OSCCON = 0b00110000;
  while (!OSCCONbits.HTS) {} // wait for oscillator to stabilize
  
  init_beeper();
  beeper_on();
}

void loop(void) {
//  freq++;
  beeper_set_freq_hz(freq);
}

void main(void) {
  init();
  while(1) {
    loop();
  }
  return;
}