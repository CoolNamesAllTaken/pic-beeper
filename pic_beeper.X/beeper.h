/* 
 * File:   beeper.h
 * Author: John McNelly
 *
 * Created on May 4, 2019, 1:31 AM
 */

#ifndef BEEPER_H
#define BEEPER_H

#include <xc.h>
#include <stdint.h>

void init_beeper(void);

void beeper_play_tone(uint16_t freq, uint16_t duration);
void beeper_wait_duration(uint16_t duration);
void beeper_set_freq_multiplier(uint8_t freq_multiplier_in);
void beeper_set_duration_divisor(uint8_t duration_divisor_in);
void beeper_jump(void);

/* private functions */
static void beeper_set_freq_hz(uint16_t freq);
static void beeper_on(void);
static void beeper_off(void);

#endif	/* BEEPER_H */

