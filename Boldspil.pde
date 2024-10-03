ArrayList<Balls> allBalls;

void setup() {
  size(600, 400);
  background(0);


  allBalls = new ArrayList<Balls>();


  for (int i = 0; i < 40; i++) {
    allBalls.add(new Balls());
  }
}
void draw() {
  background(255);


  for (Balls ball : allBalls) {
    ball.move();
    ball.checkIfBallHitWall();
    ball.display();
  }
}
void mousePressed() {
  for (int i = 0; i<allBalls.size(); i++) {
    float x = allBalls.get(i).getBallX();
    float y = allBalls.get(i).getBallY();
    if (mouseX > x - 45/2 &&
        mouseX < x+ 45/2 && 
        mouseY > y - 45/2 && 
        mouseY< y+45/2) {
          allBalls.remove(i);
    }
    
  }
}
