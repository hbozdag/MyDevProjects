SetDemo.citySet();
SetDemo.randomIntegerSet();

List<integer> listInteger= new List<Integer>();

        listInteger.add(5);  //index 0
        listInteger.add(145);//index 1
        listInteger.add(21);//index 2
        listInteger.add(67);//index 3
        listInteger.add(5);//index 4
        listInteger.add(5);//index 5

        Set<Integer> sInt=setDemo.setFromList(listInteger);
        System.debug(sInt);

// these  codes below will not execute becuyae they are null
       // set<Integer> set2;
       // set2.add(9);
       //  list<string> lst4;
       // lst4.add('test');


set<string> cities=new Set<String>();
        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('helsinki');
        cities.add('nairobi');
        cities.add('tokyo');
        cities.add('Lisbon');
        cities.add('berlin');
        cities.add('Berlin');
         System.debug('set of cities'+ cities);

        Set<String> capsCities=SetDemo.capitalizeSet(cities);

        System.debug('set of cities'+ capsCities);

        Set<String> uniqueNameSet=new Set<String>{'Tom', 'Jerry'};
        System.debug('size of the set is '+uniqueNameSet.size() );
        uniqueNameSet.add('harun');
        uniqueNameSet.add('manny');
        uniqueNameSet.add('sid');
        System.debug('does the set contains my name?  '+uniqueNameSet.contains('harun'));
        System.debug('is the set empty? ' +uniqueNameSet.isEmpty());
        uniqueNameSet.clear();
        System.debug('set should be cleared now' + uniqueNameSet);
        System.debug('is the set empty after clearing? ' +uniqueNameSet.isEmpty());
        
        //set does not provide a method to get index. 
        /* a)list has duplicates. set does not accept duplicates
           b)list is ordered. set is random.
           c)list allows index location. set does not give index.*/
           










     


