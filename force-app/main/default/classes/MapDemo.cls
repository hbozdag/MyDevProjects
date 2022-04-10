public with sharing class MapDemo {
    public static string retrieveMonth(Integer m) {
        String month='';

        map<integer, string> monthMap=new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');

        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');

        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        system.debug(monthMap.size());

        //boolean keyExits=monthMap.containsKey(m); (we can do this too)
        if(monthMap.containsKey(m)){
            
        month=monthMap.get(m);
        System.debug('requested month is '+month);

        }else{
            month='no such month exits. Please behave!';
            
       
        }

        return month;

        

    }
}
