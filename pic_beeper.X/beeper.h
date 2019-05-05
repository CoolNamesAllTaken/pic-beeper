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

void beeper_set_freq_hz(uint16_t freq);

void beeper_on(void);
void beeper_off(void);

#endif	/* BEEPER_H */

