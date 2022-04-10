public class MyApexChallenges {

    /*write an apex program to store all the numbers in a list
    starting from 1 until 20. only numbers stored at even positions in the list should be 
    added to get their sum chich should be output to debug log*/

    public static void challengeOne(){ 
    
    List<integer> listOfNumbers=new List<integer>();

integer totalSum=0;

   for(integer i=1; i<21; i++){
    if(Math.mod(i, 2)==1){
           listOfNumbers.add(i);
    }else{
        totalSum=totalSum+i;
          System.debug('total sum value '+totalSum);

    }
}
 system.debug(listOfNumbers);
    }

    public void printout(String stringtodisplay){
        System.debug('display text: '+stringtodisplay);
    }

public void mainValueMethod(){
    string websiteUrl='apexhours.com';
    System.debug('before value call: '+websiteUrl);
    passByValueCall(websiteUrl);
    System.debug('After value call: '+websiteUrl);
}
private void passByValueCall(string websiteUrl){
    websiteUrl='salesforce.com';
}
}
