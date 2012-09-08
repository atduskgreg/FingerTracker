import fingertracker.*;
import SimpleOpenNI.*;

FingerTracker fingers;
SimpleOpenNI kinect;
int threshold = 625;

void setup() {
  size(640, 480);
  
  kinect = new SimpleOpenNI(this);
  kinect.setMirror(true);
  kinect.enableDepth();

  fingers = new FingerTracker(this, 640, 480);
}

void draw() {
  kinect.update();
  PImage depthImage = kinect.depthImage();
  image(depthImage, 0, 0);

  fingers.setThreshold(threshold);
  
  int[] depthMap = kinect.depthMap();

  fingers.update(depthMap);

  int numcontours = fingers.fc.getNumContours();
  stroke(0,255,0);
  for (int k = 0; k < numcontours; k++) {
    fingers.fc.drawContour(k);
  }

     
  int numfingers = fingers.getNumFingers();
  fill(255,0,0);
  for (int i = 0; i < numfingers; i++) {
    int x = (int)fingers.getFingerX(i);
    int y = (int)fingers.getFingerY(i);
    ellipse(x-5, y -5, 10, 10);
  }
  
  fill(255,0,0);
  text(threshold, 10,20);
}

void keyPressed(){
  if(key == '-'){
    threshold -= 10;
  }
  
  if(key == '='){
    threshold += 10;
  }
}
