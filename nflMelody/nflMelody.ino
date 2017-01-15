/*
 A lullaby for your "cool friends"

 Plays a melody that sounds "kinda like" the NFL theme song?

 circuit:
 * 8-ohm speaker on digital pin 8

 created 14 Jan 2017
 by Nicholas Mink
 */

#include "pitches.h"
// notes in the jam:
int jam[] = {
  NOTE_B4, NOTE_E5, NOTE_G5, NOTE_B4, NOTE_E5, NOTE_G5, NOTE_B4, NOTE_E5, NOTE_G5, NOTE_A5, NOTE_FS5
};

int jam2[] = {
  NOTE_B4, NOTE_E5, NOTE_G5, NOTE_B4, NOTE_E5, NOTE_G5, NOTE_B4, NOTE_E5, NOTE_G5, NOTE_B5, NOTE_A5,NOTE_FS5
};

int jam3[] = {
  NOTE_B4, NOTE_G5, NOTE_A5, NOTE_B5, NOTE_B5, NOTE_CS6, NOTE_B5
};

// note durations
float noteDurations[] = {
  4, 4, 2, 4, 4, 2, 4, 4, 2, 1.5, .5
};

float noteDurations2[] = {
  4, 4, 2, 4, 4, 2, 4, 4, 2, 1.5, .5, .5
};

float noteDurations3[] = {
  1.5, 1, 1, .5, .5, .5, .5, 1
};

void setup() {
  // play the notes of first section
  for (int thisNote = 0; thisNote < 11; thisNote++) {

    // calculate note duration
    float noteDuration = 350 / noteDurations[thisNote];
    tone(8, jam[thisNote], noteDuration);
  
    // time between notes
    int pauseBetweenNotes = noteDuration * 1.40;
    delay(pauseBetweenNotes);
    // stop the tone playing:
  noTone(8);
  } // play the notes of second section
  for (int thisNote = 0; thisNote < 12; thisNote++) {
  
      // to calculate the note duration
      float noteDuration = 350 / noteDurations2[thisNote];
      tone(8, jam2[thisNote], noteDuration);
    
      // calculate time between notes
      int pauseBetweenNotes = noteDuration * 1.40;
      delay(pauseBetweenNotes);
      // stop the tone playing:
    noTone(8);
    }// play the notes of third section
  for (int thisNote = 0; thisNote < 7; thisNote++) {

    // to calculate the note duration
    float noteDuration = 350 / noteDurations3[thisNote];
    tone(8, jam3[thisNote], noteDuration);
  
    // calculate time between notes
    int pauseBetweenNotes = noteDuration * 1.40;
    delay(pauseBetweenNotes);
    // stop the tone playing:
  noTone(8);
  }
}

// yep, i did it for each one

void loop() {
  // no need to repeat the melody.
}
