class Square{
  float xPos;
  float yPos;
  float zPos;
  float frequence;
  float amplitude;
  
  Square(){
    this.xPos = random(width*10);
    this.yPos = random(-height, height);
    this.zPos = 0;
    this.frequence = random(20);
    this.amplitude = random(150);
  }
  
  void update(float t){
    this.zPos = this.amplitude * sin(t * frequence);
  }
  
  void display(){
    beginShape();
    vertex(xPos, yPos, zPos);
    vertex(xPos + size, yPos, zPos);
    vertex(xPos + size, yPos + size, zPos);
    vertex(xPos, yPos + size, zPos);
    endShape(CLOSE);
  }
}
