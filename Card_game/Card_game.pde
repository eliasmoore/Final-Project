//G = me
//E = my partner

import java.util.ArrayList;
//Card test= new ExampleCard(100,100);
//Card eskettit= new ExampleCard(500,500);
ArrayList<Card> hand;
void setup()
{
  size(1024,576);//G
  background(230,230,230);
  rect(0,0,1024,50);
  rect(0,501,1024,75);
  
}

void createHand()//Eli
{
  hand=new ArrayList<Card>();
  hand.add(new ExampleCard(100,100));
  hand.add(new OtherCard(500,500));
}
void draw(){//G
  run();
}
  public void run(){//G
  background(230,230,230);
  rect(0,0,1024,50);
  rect(0,501,1024,75);
  for(int i=0;i<hand.size();i++){
    hand.get(i).showCard();
    hand.get(i).clickDrag();
   }
  }

void  mousePressed(){//G
  for(int i=0;i<hand.size();i++){
  hand.get(i).mouseClick();
  }
}
static void startGame(Player player1, Player player2)
{
    
}
