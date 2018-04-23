import java.util.ArrayList;
public class Player
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
    }
  }
  
  
  
}