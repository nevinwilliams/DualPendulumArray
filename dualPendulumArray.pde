 public void dualPendulumArray(int i) {

   // Euler's method broken up into digestable pieces.
   
        float numerator1 = -gravity[i] * (2 * mass1[i] + mass2[i]) * sin(angle1[i]);
        float numerator2 = -mass2[i] * gravity[i] * sin(angle1[i] - 2 * angle2[i]);
        float numerator3 = -2 * sin(angle1[i] - angle2[i]) * mass2[i];
        float numerator4 = velocity2[i] * velocity2[i] * length2[i] + velocity1[i] * velocity1[i] * length1[i] * cos(angle1[i] - angle2[i]);
        float denominator = length1[i] * (2 * mass1[i] + mass2[i] - mass2[i] * cos(2 * angle1[i] - 2 * angle2[i]));

        acceleration1[i] = (numerator1 + numerator2 + numerator3 * numerator4) / denominator;

        numerator1 = 2 * sin(angle1[i] - angle2[i]);
        numerator2 = velocity1[i] * velocity1[i] * length1[i] * (mass1[i] + mass2[i]);
        numerator3 = gravity[i] * (mass1[i] + mass2[i]) * cos(angle1[i]);
        numerator4 = velocity2[i] * velocity2[i] * length2[i] * mass2[i] * cos(angle1[i] - angle2[i]);
        denominator = length2[i] * (2 * mass1[i] + mass2[i] - mass2[i] * cos(2 * angle1[i] - 2 * angle2[i]));

        acceleration2[i] = numerator1 * (numerator2 + numerator3 + numerator4) / denominator;


        resetMatrix();    // clean slate
        translate(width / 2.0F, height / 4.0F);  // origin in middle at 1st quadrant.
        stroke(0,0, 1,1 );

        circle(0, 0, 5);

        x1[i] = length1[i] * sin(angle1[i]);
        y1[i] = length1[i] * cos(angle1[i]);

        x2[i] = x1[i] + length2[i] * sin(angle2[i]);
        y2[i] = y1[i] + length2[i] * cos(angle2[i]);

        velocity1[i] += acceleration1[i];
        velocity2[i] += acceleration2[i];

        angle1[i] += velocity1[i];
        angle2[i] += velocity2[i];

        fill(i, 1, 1, 1F);
        stroke(i, 1, 1, 1F);

        line(0, 0, x1[i], y1[i]);
        circle(x1[i], y1[i], mass1[i] / 2);

        line(x1[i], y1[i], x2[i], y2[i]);
        circle(x2[i], y2[i], mass2[i] / 2);

    }
