public abstract class Card
{
  int health;
  int damage;
  boolean guard;
  
  int getHealth()
  {
    return health;
  }
  
  void setHealth(int newHealth)
  {
    health = newHealth;
  }
  
  int getDamage(int newDamage)
  {
    return damage;
  }
  
  void setDamage(int newDamage)
  {
    damage = newDamage;
  }
  
}
