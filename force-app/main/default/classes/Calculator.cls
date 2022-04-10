public class Calculator {
    public static void welcomeMessage() {

        System.debug('welcome to apex calculator');


    }

    public static void printMessage(string msg){

        system.debug(msg);
    }

    public static Integer add(integer a, integer b){
       integer sum=a+b;

        return sum; 
 
    }

    public static integer add(integer int1, integer int2, Integer int3){
        Integer sum=int1+int2+int3;
        return sum;
    }

   

    //tyhis code will not pass because two params were written before with the same method name
   // public void  add(integer i, integer k){ }

   public static Integer add(list<Integer> intList){
     // please check anynomous class of calculator
    //to store sum of all integers
    Integer returnInt=0;
     //let's debug here
    System.debug('intList '+intList);

    for (integer eachInt: intList){
          //let's debug here
        System.debug('eachInt '+eachInt);
        System.debug(' before adding this to returnInt '+returnInt);
        returnInt +=eachInt;
        System.debug(' after adding this to returnInt '+returnInt);
    }
    return returnInt;
   }
   


}
