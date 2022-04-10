@isTest

public with sharing class CalculatorTest {
   
   @isTest
   public static void testMessages(){
       Calculator.welcomeMessage();
       Calculator.printMessage('this is from a test method');
   }
@isTest
   public static void addTest1(){
       Integer calcAdd=Calculator.add(10, 15);
       System.assertEquals(25, calcAdd);
   }
@isTest
   public static void addTest2(){
    Integer calcAdd=Calculator.add(10, 15, 10);
    System.assertEquals(35, calcAdd);
}
@isTest
public static void addTest3(){
    List<integer> listInteger= new List<Integer>();

    listInteger.add(5);  //index 0
    listInteger.add(5);//index 4
    listInteger.add(5);//index 5

    Integer calcSum= Calculator.add(listInteger);
    System.assertEquals(15, calcSum);
}
    
}
