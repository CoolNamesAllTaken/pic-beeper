/*
 * File:   main.c
 * Author: John McNelly
 *
 * Created on May 3, 2019, 12:43 AM
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
#include "beeper.h"

#define NOKIA
#define HAPPY_BIRTHDAY

void init(void) {
  // set internal clock to run on 8 MHz because why not
  OSCCON = 0b00110000;
  while (!OSCCONbits.HTS) {} // wait for oscillator to stabilize
  
  init_beeper();
}

void loop(void) {
  
#ifdef NOKIA
  beeper_set_freq_multiplier(8);
  beeper_set_duration_divisor(6);
  // https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Nokia_tune.svg/1280px-Nokia_tune.svg.png
  beeper_play_tone(329, 500); // E4
  beeper_play_tone(294, 500); // D4
  beeper_play_tone(185, 1000); // F3#
  beeper_play_tone(207, 1000); // G3#
  beeper_play_tone(277, 500); // C4#
  beeper_play_tone(247, 500); // B3
  beeper_play_tone(147, 1000); // D3
  beeper_play_tone(164, 1000); // E3
  beeper_play_tone(247, 500); // B3
  beeper_play_tone(220, 500); // A3
  beeper_play_tone(139, 1000); // C3#
  beeper_play_tone(165, 1000); // E3
  beeper_play_tone(220, 3000); // A3
  
  for (uint8_t i = 0; i < 5; i++) {
    beeper_wait_duration(2000);
  }
#endif /* NOKIA */

#ifdef HAPPY_BIRTHDAY
  beeper_set_freq_multiplier(6);
  beeper_set_duration_divisor(4);
  // https://d2vlcm61l7u1fs.cloudfront.net/media%2Fccc%2Fcccff140-f376-4b3b-b66d-e91f17ee1563%2FphpWii0Fn.png
  beeper_play_tone(262, 500);
  beeper_play_tone(262, 500);
  beeper_play_tone(294, 1000);
  beeper_play_tone(262, 1000);
  beeper_play_tone(349, 1000);
  beeper_play_tone(330, 2000);
  beeper_play_tone(262, 500);
  beeper_play_tone(262, 500);
  beeper_play_tone(294, 1000);
  
  beeper_play_tone(262, 1000);
  beeper_play_tone(392, 1000);
  beeper_play_tone(349, 2000);
  beeper_play_tone(262, 500);
  beeper_play_tone(262, 500);
  beeper_play_tone(523, 1000);
  beeper_play_tone(440, 1000);
  beeper_play_tone(349, 1000);
  beeper_play_tone(330, 1000);
  
  beeper_play_tone(294, 2000); // todo: more duration
  beeper_play_tone(466, 500);
  beeper_play_tone(466, 500);
  beeper_play_tone(440, 1000);
  beeper_play_tone(349, 1000);
  beeper_play_tone(392, 1000);
  beeper_play_tone(349, 2000);
  
  for (uint8_t i = 0; i < 5; i++) {
    beeper_wait_duration(2000);
  }
#endif /* HAPPY_BIRTHDAY */
}

void main(void) {
  init();
  while(1) {
    loop();
  }
  return;
}