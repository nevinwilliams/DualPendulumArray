
float[] length1 = new float[5];
float[] length2 = new float[5];
float[] mass1 = new float[5];
float[] mass2 = new float[5];

float[] x1 = new float[5];  // x coordinate of bob of pendulum 1
float[] y1 = new float[5];  // y coordinate of bob of pendulum 1

float[] x2 = new float[5];  // x coordinate of bob of pendulum 2
float[] y2 = new float[5];  // y coordinate of bob of pendulum 2

float[] angle1 = new float[5];  // angle of pendulum 1 from vertical 
float[] angle2 = new float[5];  // angle of pendulum 2 from vertical 


float[] velocity1 = new float[5];   // rate of change of angle1
float[] velocity2 = new float[5];   // rate of change of angle2

float[] acceleration1 = new float[5];  // rate of change of velocity1
float[] acceleration2 = new float[5];  // rate of change of velocity2


float[] gravity = new float[5]; // gravity of the simulation


void setup() {
  size(1000, 1000, P2D);

  colorMode(HSB, gravity.length, 1, 1, 1); // Hue value ~= array index range for easy color selection

  int index = 0;

  length1[index] = 250;
  length2[index] = 250;
  mass1[index] = 40;
  mass2[index] = 40;
  angle1[index] = PI / 2 + 0.000001F;
  angle2[index] = PI / 2;
  acceleration1[index] = 0.01F;
  acceleration2[index] = -0.001F;
  gravity[index] = 1;
  index++;

  length1[index] = 250;
  length2[index] = 250;
  mass1[index] = 40;
  mass2[index] = 40;
  angle1[index] = PI / 2 + 0.000002F;
  angle2[index] = PI / 2;
  acceleration1[index] = 0.01F;
  acceleration2[index] = -0.001F;
  gravity[index] = 1;
  index++;

  length1[index] = 250;
  length2[index] = 250;
  mass1[index] = 40;
  mass2[index] = 40;
  angle1[index] = PI / 2 + 0.000003F;
  angle2[index] = PI / 2;
  acceleration1[index] = 0.01F;
  acceleration2[index] = -0.001F;
  gravity[index] = 1;
  index++;

  length1[index] = 250;
  length2[index] = 250;
  mass1[index] = 40;
  mass2[index] = 40;
  angle1[index] = PI / 2 + 0.000004F;
  angle2[index] = PI / 2;
  acceleration1[index] = 0.01F;
  acceleration2[index] = -0.001F;
  gravity[index] = 1;
  index++;

  length1[index] = 250;
  length2[index] = 250;
  mass1[index] = 40;
  mass2[index] = 40;
  angle1[index] = PI / 2 + 0.000005F;
  angle2[index] = PI / 2;
  acceleration1[index] = 0.01F;
  acceleration2[index] = -0.001F;
  gravity[index] = 1;
  
} // setup end


 public void draw() {
        background(0,0,0,1);
        strokeWeight(4);

        for (int i = 0; i < gravity.length ; i++) {
            dualPendulumArray(i);
        }


    } // draw method end
