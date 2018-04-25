import java.util.ArrayList;
public class Player//Eli
//TODO Move the hand stuff to inPlay
{
  ArrayList<Card> deck;
  ArrayList<Card> hand;
  ArrayList<Card> inPlay;
  
  
  
  void shuffleDeck()
  {
    int temp;
    for(int i = 1; i < 100; i++)
    {
      deck.remove(Math.random()*Game.deckLimit);
      //deck.add()
      //temp = Math.random()*deck;
      //deck.remove(temp);
      //deck.add(temp);
    }
  }
  
  
  
}
