/* 
 * File:   beeper.h
 * Author: John McNelly
 *
 * Created on May 4, 2019, 1:31 AM
 */

#ifndef BEEPER_H
#define BEEPER_H

#include <xc.h>

void init_beeper();

void beeper_set_freq_hz(int freq);

void beeper_on();
void beeper_off();

#endif	/* BEEPER_H */

