import java.util.Random;
  int xCoord=100;
  int yCoord=100;
public abstract class Card
{
  int health;
  int damage;
  int kritDamage;
  boolean guard;
  static final int LENGTH = 200;
  static final int WIDTH = 200;
  int kritChance = 10;
  int currentMouseX;
  int currentMouseY;
  Boolean firstClick = true;
  
public void clickDrag(){
  if(xCoord <= mouseX && mouseX >= (xCoord+140) && yCoord <= mouseY && mouseY >= (xCoord+100)){
        if(mousePressed==true){
            if(firstClick == true){
               currentMouseY = mouseY;
               currentMouseX = mouseX;
               firstClick = false;
               System.out.println(currentMouseX);
              }       
         }
         if(mouseX > currentMouseX){
           xCoord = xCoord+10;
         }
         if(mouseY > currentMouseY){
           yCoord = yCoord+10;
         }
         if(mouseX < currentMouseX){
           xCoord = xCoord-10;
         }
         if(mouseY < currentMouseY){
           yCoord = yCoord-10;
         }
    }
    
  
}    


 
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
    return damage; }
  
  void setDamage(int newDamage)
  {
    damage = newDamage;
  }
  int getKrit()
  {
    return kritDamage;
  }
  
  void setKrit(int newKrit)
  {
     kritDamage = newKrit;
  }
  
    public void showCard(){
    fill(255,255,255);
    rect(xCoord,yCoord,100,140);
    fill(50,50,50);
    text(health,(xCoord+12),(yCoord+30));
    text(damage,(xCoord+62),(yCoord+30));
    }
    void fightCard(Card enemy){
      int friendlyDamage;
      int random = (int)Math.random()*kritChance;
      if(random == 1){
        friendlyDamage = this.kritDamage;
      }
      else{
        friendlyDamage= this.damage;
      }
      this.setHealth(this.getHealth()-enemy.damage);
      enemy.setHealth(enemy.getHealth()-friendlyDamage);    
    }
}