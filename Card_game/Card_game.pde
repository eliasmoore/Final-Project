Card test= new ExampleCard();
int cardH =
void setup()
{
  size(1024,576);
  background(230,230,230);
  rect(0,0,1024,50);
  rect(0,501,1024,75);
}
void draw(){
  test.showCard();
}