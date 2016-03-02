/**
 * Simple Video Sampler Example
 *
 * focus is here on simplicity. 
 * it can be done more elegantly with Arrays, but this works.
 * 
 */

import processing.video.*;

Movie mov1;
Movie mov2;
Movie mov3;

int playMovie = 1;

void setup() {
  size(640, 360);
  background(0);

  mov1 = new Movie(this, "m1.mov");
  mov2 = new Movie(this, "m2.mov");
  mov3 = new Movie(this, "m3.mov");
    
  // Pausing the video at the first frame. 
  mov1.play();
  mov1.volume(1);
  mov2.volume(1);
  mov3.volume(1);
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  if( playMovie == 1 ){
    image(mov1, 0, 0, width, height);
  } else if( playMovie == 2 ){
    image(mov2, 0, 0, width, height);
  } else if( playMovie == 3 ){
    image(mov3, 0, 0, width, height);
  }
}

void keyPressed() {
  if( key == '1' ) {
    playMovie = 1;
    mov1.jump(0);
    mov1.play();
    mov2.pause();
    mov3.pause();
  } else if( key == '2' ) {
    playMovie = 2;
    mov2.jump(0);
    mov2.play();
    mov1.pause();
    mov3.pause();
  } else if( key == '3' ) {
    playMovie = 3;
    mov3.jump(0);
    mov3.play();
    mov2.pause();
    mov1.pause();
  }
}