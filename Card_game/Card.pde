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
  int originalMouseX = xCoord;
  int originalMouseY = yCoord;
  Boolean firstClick = true;
  
public void mouseClick(){
  originalMouseX = mouseX;
  originalMouseY = mouseY;
  System.out.println(xCoord);
  System.out.println(yCoord);
  System.out.println(originalMouseX);
  System.out.println(originalMouseY);
}
public void clickDrag(){
  System.out.println(xCoord);
            System.out.println(yCoord);
            System.out.println(originalMouseX);
            System.out.println(originalMouseY);
  if((originalMouseX >= xCoord) && (originalMouseX <= (xCoord+140)) && (originalMouseY >= yCoord) && (originalMouseY <= (yCoord+100))){
        if(mousePressed==true){
            xCoord = mouseX;
            yCoord = mouseY;
            originalMouseX = mouseX + 50;
            originalMouseY = mouseY + 70;
            System.out.println(xCoord);
            System.out.println(yCoord);
            System.out.println(originalMouseX);
            System.out.println(originalMouseY);
            /*   if(firstClick == true){
                 originalMouseY = mouseY;
                 originalMouseX = mouseX;
                 firstClick = false;
                 System.out.println(originalMouseX);
              } 
              */
         }
         /*if(mouseX > originalMouseX){
           xCoord = xCoord+10;
           //originalMouseX = mouseX;
         }
         if(mouseY > originalMouseY){
           yCoord = yCoord+10; 
           //originalMouseY = mouseY;
         }
         if(mouseX < originalMouseX){
           xCoord = xCoord-10;
           //originalMouseX = mouseX;           
         }
         if(mouseY < originalMouseY){
           yCoord = yCoord-10;
           //originalMouseY = mouseY;
         }   */

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