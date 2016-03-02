/**
 * Simple Video Sampler Example
 *
 * focus is here on simplicity. 
 * it can be done more elegantly with Arrays, but this works.
 * 
 */

import processing.video.*;

ArrayList <Movie> movs = new ArrayList<Movie>();

int playMovie = 0;

void setup() {
  size(640, 360);
  background(0);

  movs.add(new Movie(this, "m1.mov"));
  movs.add(new Movie(this, "m2.mov"));
  movs.add(new Movie(this, "m3.mov"));
  movs.add(new Movie(this, "valve.mov"));
    
  // Pausing the video at the first frame. 
  movs.get(playMovie).play();
  
  for(int i = 0; i < movs.size(); i++){
    movs.get(i).volume(1);
  };
  
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movs.get(playMovie), 0, 0, width, height);
}

void keyPressed() {
  if( Integer.parseInt(key+"") >= 0 && Integer.parseInt(key+"") < 10 && Integer.parseInt(key+"") < movs.size() ) {
    playMovie = Integer.parseInt(key+"");
    for(int i = 0; i < movs.size(); i++){
      if(i == playMovie){
        movs.get(i).jump(0);
        movs.get(i).play();
      } else {
        movs.get(i).pause();
      }
    };
  }
}