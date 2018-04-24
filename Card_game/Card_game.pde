Card test= new ExampleCard(100,100);
void setup()
{
  size(1024,576);
  background(230,230,230);
  rect(0,0,1024,50);
  rect(0,501,1024,75);
  
}
void draw(){
  background(230,230,230);
  rect(0,0,1024,50);
  rect(0,501,1024,75);
  test.showCard();
  test.clickDrag();
}
void  mousePressed(){
  
  test.mouseClick();
}
  static void startGame(Player player1, Player player2){
}