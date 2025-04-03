public class testApexController {
   Integer myValue = 100;

   public testApexController () {
      myValue = 100; // initialized variable when class is called
      System.debug('myValue variable with no Overaloading'+myValue);
   }

   public testApexController (Integer newPrice) { // Overloaded constructor
      myValue = newPrice; // initialized variable when class is called
      System.debug('myValue variable with Overaloading'+myValue);
   }
}