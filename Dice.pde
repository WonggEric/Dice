boolean isOne = false;
boolean isTwo = false;
boolean isThree = false;
boolean isFour = false;
boolean isFive = false;
boolean isSix = false;
Die d6;
int sum = 0;

void setup() {
  size(1000, 800);
  noLoop();
}

void draw()
{
  background(255);
  for(int i = 77;i<=800;i+=125){
    for(int j = 0; j<=500;j+=125){
      d6 = new Die(i,j);
      d6.show();
      sum = sum + d6.rand;
    }
  }
   textSize(25);
   text("Total: " +sum,425,700);
}
void mousePressed()
{
  sum = 0;
  redraw();
  d6.roll();
}
class Die //models one single dice cube
{
  int myX, myY;
  int rand;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    rand = (int)(Math.random()*6+1);
    isOne = false;
    isTwo = false;
    isThree = false;
    isFour = false;
    isFive = false;
    isSix = false;
    
    if (rand==1) {
      isOne = true;
    } else if (rand==2) {
      isTwo = true;
    } else if (rand==3) {
      isThree = true;
    } else if (rand==4) {
      isFour = true;
    } else if (rand==5) {
      isFive = true;
    } else {
      isSix = true;
    }
  }
  void show()
  {
    fill(255);
    line(50+myX, 40+myY, 125+myX, 40+myY);
    line(50+myX, 135+myY, 125+myX, 135+myY);
    line(40+myX, 50+myY, 40+myX, 125+myY);
    line(135+myX, 50+myY, 135+myX, 125+myY);

    strokeWeight(2);
    beginShape();
    curveVertex(50+myX, 40+myY);
    curveVertex(50+myX, 40+myY);
    curveVertex(43+myX, 43+myY);
    curveVertex(40+myX, 50+myY);
    curveVertex(40+myX, 50+myY);
    endShape();

    beginShape();
    curveVertex(125+myX, 40+myY);
    curveVertex(125+myX, 40+myY);
    curveVertex(133+myX, 43+myY);
    curveVertex(135+myX, 50+myY);
    curveVertex(135+myX, 50+myY);
    endShape();

    beginShape();
    curveVertex(40+myX, 125+myY);
    curveVertex(40+myX, 125+myY);
    curveVertex(43+myX, 132+myY);
    curveVertex(50+myX, 135+myY);
    curveVertex(50+myX, 135+myY);
    endShape();

    beginShape();
    curveVertex(135+myX, 125+myY);
    curveVertex(135+myX, 125+myY);
    curveVertex(132+myX, 132+myY);
    curveVertex(125+myX, 135+myY);
    curveVertex(125+myX, 135+myY);
    endShape();
  
    fill(0);
    if (isOne == true) {
      ellipse(87.5+myX, 87.5+myY, 10, 10);
    }else if (isTwo == true) {
      ellipse(60+myX, 60+myY, 10, 10);
      ellipse(115+myX, 115+myY, 10, 10);
    }else if (isThree == true) {
      ellipse(87+myX, 87+myY, 10, 10);
      ellipse(60+myX, 60+myY, 10, 10);
      ellipse(115+myX, 115+myY, 10, 10);
    }else if (isFour == true) {
      ellipse(60+myX, 60+myY, 10, 10);
      ellipse(115+myX, 60+myY, 10, 10);
      ellipse(60+myX, 115+myY, 10, 10);
      ellipse(115+myX, 115+myY, 10, 10);
    }else if (isFive == true) {
      ellipse(87+myX, 87+myY, 10, 10);
      ellipse(60+myX, 60+myY, 10, 10);
      ellipse(115+myX, 60+myY, 10, 10);
      ellipse(60+myX, 115+myY, 10, 10);
      ellipse(115+myX, 115+myY, 10, 10);
    }else if (isSix == true) {
      ellipse(60+myX, 60+myY, 10, 10);
      ellipse(115+myX, 60+myY, 10, 10);
      ellipse(60+myX, 115+myY, 10, 10);
      ellipse(115+myX, 115+myY, 10, 10);
      ellipse(60+myX, 87+myY, 10, 10);
      ellipse(115+myX, 87+myY, 10, 10);
      }
  }
}
