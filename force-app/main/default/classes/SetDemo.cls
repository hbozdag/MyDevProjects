public with sharing class SetDemo {
    public static void citySet() {
        //CREATING empty set string
        //collection 
        

        set<string> cities=new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Helsinki');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Berlin');

        System.debug('set of cities'+ cities);

    }

    public static void randomIntegerSet(){

    Set<Integer> setInteger=new Set<Integer>();
    setInteger.add(19);
    setInteger.add(12);
    setInteger.add(19);
    setInteger.add(21);
    setInteger.add(98);
    setInteger.add(191);
    setInteger.add(186);
    System.debug('random integer set : '+setInteger);

    Set<Integer> setInteger2=new Set<Integer>{10,15,23,108,15,101};
    System.debug('random integer set version 2 written next to each other '+ setInteger2);


    }

    public static Set<Integer> setFromList(List<Integer> intList) {
        Set<Integer> intSet=new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
        
    }

    public static Set<String> capitalizeSet(Set<String> setString) {
        set<String> capsSet=new Set<String>();

        for (string eachStr:setString){
            //use .capitalize method of string
            string tempStr=eachStr.capitalize();
            capsSet.add(tempStr);

        }

        return capsSet;
        
    }

    
}
