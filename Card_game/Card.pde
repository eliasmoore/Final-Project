public abstract class Card
{
  int health;
  int damage;
  boolean guard;
  static final int LENGTH = 200;
  static final int WIDTH = 200;
  int xCoord;
  int yCoord;
  
 
  int getHealth()
  {
    return health;
  }
  
  void setHealth(int newHealth)
  {
    health = newHealth;
  }
  
  int getDamage()
  {
    return damage;
  }
  
  void setDamage(int newDamage)
  {
    damage = newDamage;
  }
    public void showCard(){
    fill(255,255,255);
    rect(612,400,100,140);
        fill(50,50,50);
    text(health,680,425);
    text(damage,620,425);
    }
  
}
