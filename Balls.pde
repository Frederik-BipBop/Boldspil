class Balls {
  float x;
  float y;
  float speedX;
  float speedY;
  float size = 45;
  Balls() {
    x= random(size, width - size);
    y= random(size, height - size);
    speedX= random(4, 10);
    speedY= random(4, 10);
  }
  float getBallX(){
    return x;
  }
  float getBallY(){
    return y;
  
  }
  void move() {
    x += speedX;
    y += speedY;
  }
  void checkIfBallHitWall() {
    if (x > width - size/2 || x< size/2) {
      speedX *= -1;
    }
    if (y>height - size/2 || y<size/2) {
      speedY *= -1;
    }
  }
  void display() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(x, y, size, size);
  }
}
