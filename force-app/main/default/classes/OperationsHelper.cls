public class OperationsHelper {
    public Decimal largestOutOfTwoNumbers(Decimal dec1, Decimal dec2) {
        
       Decimal largestNum;


if(dec1>dec2){
largestNum=dec1;
system.debug('Largest number is '+dec1);

}else{
largestNum=dec2;
system.debug('Largest number is '+dec2);
}

    return largestNum;

    }

    public Decimal smallestOutOfThreeNumbers(Decimal num1, Decimal num2, Decimal num3) {
        
        Decimal smallestNum;

 
 if((num1<num2) && (num1<num3)){
 smallestNum=num1;
 system.debug('Smallest number is '+num1);
 
 }else if ((num2<num1) && (num2<num3)){
 smallestNum=num2;
 system.debug('Smallest number is '+num2);
 }else{
    smallestNum=num3;
    system.debug('Smallest number is '+num3);
 }
 
     return smallestNum;
 
     }

     public Integer sumOfPositiveIntegers(Integer n){
       if (n<0){
           System.debug('We are not calculating the sum for negative numbers');
           return null;
       }else{

        
        Integer s=0; 
        for (Integer i = 0; i <=n; i++) {
          s=s+i;
           
            }
            System.debug('Sum of numbers are ' +s);
            return s;
        }
       
    }


    public  decimal sumDec(List<decimal> Values){
        decimal sum=0;
   if(values.size()>0){

for(decimal value:values){
    sum +=value;
}
system.debug('sum of values is '+ sum);
   }else{
    System.debug('please provide values.');
   }
      
       
        return sum;

    }

public decimal average(list<decimal> Values){
    decimal averDec;

    if (Values.size()>0){
      
    decimal sum=this.sumDec(Values);
    averDec= sum/Values.size();
            System.debug('the avreage of the values is '+averDec);
        
    }else{
        System.debug('please provide values.');
        return null;
    }
    return averDec;
}


public decimal highest(List<decimal> Values){

    decimal larger =Math.max(10.23, 5.45);
    System.debug(larger);
return larger;
}

public Decimal highestOfListValues(List<decimal> Values){
    decimal highestElement;

    if(Values.size()>0){
        //make the first element as highest
        highestElement=Values[0];
        //then start the loop
        for (decimal val:values){
            if(val>highestElement){
            highestElement=val;
            }

        }
    }else{
        System.debug('please provide values');
    }
    return highestElement;
}

public Decimal lowestOfListValues(List<decimal> Values){
    decimal lowestElement;

    if(Values.size()>0){
        //make the first element as highest
        lowestElement=Values[0];
        //then start the loop
        for (decimal val:values){
            if(val<lowestElement){
            lowestElement=val;
            }

        }
    }else{
        System.debug('please provide values');
    }
    return lowestElement;
}

//create a method and print the elements of list in the reverse order

public void reverseOrder(list<object> Values){

    if(Values.size()>0){ 

    for (integer i =Values.size()-1; i>=0; i--) {
        System.debug(values[i]);
        
    }
    }else {
        system.debug('please provide values');
    }
  


}

        
     


}
