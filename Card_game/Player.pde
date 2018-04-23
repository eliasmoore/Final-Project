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
<<<<<<< HEAD
      deck.remove(Math.random()*Game.deckLimit);
      //deck.add()
=======
      temp = Math.random()*deck.;
      deck.remove(temp);
      deck.add(temp);
>>>>>>> 73206aaffb90105d5cf5729098f8cb3aee1665ec
    }
  }
  
  
  
}