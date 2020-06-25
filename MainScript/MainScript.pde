int nbrSquares;
int size;
float time;
ArrayList<Square> squares;

void setup(){
  size(600, 600, P3D);
  frameRate(30);
  noFill();
  stroke(255);
  
  nbrSquares = 1000;
  size = 20;
  time = 0;
  squares = new ArrayList<Square>();
  for(int i=0; i<nbrSquares; i++){
    Square square = new Square();
    squares.add(square);
  }
}

void draw(){
  background(0);
  
  //translate(width/2, height/2);
  translate(0, height/2);
  rotateY(PI/3);
  
  for(Square square : squares){
    square.update(time);
    square.display();
  }
  
  time += 0.01;
}
