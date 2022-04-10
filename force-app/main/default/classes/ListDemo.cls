public class ListDemo {
    public static String candidatesList(integer i) {

        //1. creating empty list string 
        //collection

        //data type     variable name      creating new instance 
        List <string>   listCandidates= new List<string>(); 
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        listCandidates.add('Harun');

        //System.debug('candidates are '+ listCandidates);
        //string  returnStr= listCandidates[i];
       
        string returnStr='';
        if(i>=0 && i<listCandidates.size())
        returnStr=listCandidates[i];
        else{
            returnStr='No values found';
        }
         return returnStr;


      
    }

    public static void randomIntegerList(){

        List<integer> listInteger= new List<Integer>();

        listInteger.add(5);  //index 0
        listInteger.add(145);//index 1
        listInteger.add(21);//index 2
        listInteger.add(67);//index 3
        listInteger.add(5);//index 4
        listInteger.add(5);//index 5

        //data type     variable   =  variable that holds the data.get(number of index); or [number of index];
        integer index3Value =listInteger.get(3);

        //or

        Integer index3Value2 = listInteger[3];
        System.debug('index 3 value is '+index3Value);
        System.debug('index 3 value is '+index3Value2);


        System.debug('list of random integers are '+listInteger );
        listInteger.sort();
        Integer sizeOfList=listInteger.size();

        system.debug('list in an ascending order after sorting '+ listInteger+' and it is size is '+sizeOfList);

       
        
        List <String> stringList = new List<String>();
           stringList.add('ListDemo');
            stringList.add('randomString');
           stringList.add('45');

            System.debug('list of random strings are '+stringList );
    }

    public static void allCats(){
        cat falconsCat=new cat('fluffykins', 'white');
        cat vitapsCat= new cat('simba', 'brown');
        cat sumitscat=new cat('smokey', 'gray');

        List<cat> cats= new list<cat>();
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(sumitscat);
        cats.add(vitapsCat);
        cats.add(falconsCat);
        cats.add(sumitscat);
        cats.add(sumitscat);

      System.debug('all cats '+ cats);

      boolean catsIsEmpty=cats.isEmpty();//false
      if(!catsIsEmpty){
          cat catAt3=cats[3];
          System.debug('cat at 3 is '+catAt3);

      }


    }

    public static void allCars(){
        car bm=new car();//bm is empty
        bm.carColor='black'; //this is valid
        car c1; //c1 will be null here

        list<car> cars=new list<car>();

        cars.add(bm);
        cars.add(new car());

        car lm=cars[1];
        System.debug('lm instance ='+lm);
    }

    public static void iterateIntegerList(){

        List<integer> listInteger= new List<Integer>();

        listInteger.add(5);  //index 0
        listInteger.add(145);//index 1
        listInteger.add(21);//index 2
        listInteger.add(67);//index 3
        listInteger.add(5);//index 4
        listInteger.add(5);//index 5

        for (Integer eachInteger: listInteger){
            System.debug(eachInteger);
            
        }
        system.debug('we printed all numbers one by one');
    }

    public static void listToSetDemo() {
      
List<integer> listInteger= new List<Integer>();

listInteger.add(5);  //index 0
listInteger.add(145);//index 1
listInteger.add(21);//index 2
listInteger.add(67);//index 3
listInteger.add(5);//index 4
listInteger.add(5);//index 5

system.debug(SetDemo.setFromList(listInteger));
        
    }
}
