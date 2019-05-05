/* 
 * File:   song.h
 * Author: John McNelly
 *
 * Created on May 4, 2019, 3:51 PM
 */

#ifndef SONG_H
#define	SONG_H

#include<stdint.h>

#define BITS_PER_NIBBLE 4

#ifdef HAPPY_BIRTHDAY

#define NUM_NOTES 8
#define NOTE_FREQ_OFFSET 200
uint8_t note_num_to_freq_hz[NUM_NOTES] = {
    62, /*0*/
    94, /*1*/
    130, /*2*/
    149, /*3*/
    192, /*4*/
    240, /*5*/
    266, /*6*/
    323 /*7*/
};
#define SONG_LENGTH 25 // number of notes
uint8_t note_num[1] = {
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0,*/ 
    (0<<BITS_PER_NIBBLE) | 1, /*1, 0, */
    (2<<BITS_PER_NIBBLE) | 3, /*3, 2, */
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0, */
    (0<<BITS_PER_NIBBLE) | 1, /*1,0, */
    (3<<BITS_PER_NIBBLE) | 4, /*4, 3, */
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0, */
    (5<<BITS_PER_NIBBLE) | 7, /*7, 5, */
    (2<<BITS_PER_NIBBLE) | 3, /*3, 2, */
    (6<<BITS_PER_NIBBLE) | 1, /*1, 6, */
    (5<<BITS_PER_NIBBLE) | 6, /*6, 5, */
    (4<<BITS_PER_NIBBLE) | 3, /*3, 4, */
    3
};
#define NOTE_DUR_TO_MSEC 500
uint8_t note_dur[SONG_LENGTH/2 + SONG_LENGTH%2] = {
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0,*/ 
    (0<<BITS_PER_NIBBLE) | 1, /*1, 0, */
    (2<<BITS_PER_NIBBLE) | 3, /*3, 2, */
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0, */
    (0<<BITS_PER_NIBBLE) | 1, /*1,0, */
    (3<<BITS_PER_NIBBLE) | 4, /*4, 3, */
    (0<<BITS_PER_NIBBLE) | 0, /*0, 0, */
    (5<<BITS_PER_NIBBLE) | 7, /*7, 5, */
    (2<<BITS_PER_NIBBLE) | 3, /*3, 2, */
    (6<<BITS_PER_NIBBLE) | 1, /*1, 6, */
    (5<<BITS_PER_NIBBLE) | 6, /*6, 5, */
    (4<<BITS_PER_NIBBLE) | 3, /*3, 4, */
    3
//    1, 1,
//    2, 2,
//    2, 4,
//    1, 1,
//    2, 2,
//    2, 4,
//    1, 1,
//    2, 2,
//    2, 2,
//    6, 1,
//    1, 2,
//    2, 2,
//    4
};
#endif /* HAPPY_BIRTHDAY */


#endif	/* SONG_H */

