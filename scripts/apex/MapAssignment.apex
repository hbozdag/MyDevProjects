Map<integer, string> zipCodeToCityMap=new Map<Integer, String>();
zipCodeToCityMap.put(75043, 'Garland');
zipCodeToCityMap.put(75048, 'Richardson');
zipCodeToCityMap.put(75067, 'Richardson');
zipCodeToCityMap.put(75053, 'Wylie');
zipCodeToCityMap.put(75032, 'Plano');
zipCodeToCityMap.put(75983, 'Dallas');
zipCodeToCityMap.put(75078, 'Houston');

system.debug(zipCodeToCityMap.containsKey(204101));
System.debug(zipCodeToCityMap.keySet());
System.debug(zipCodeToCityMap.values());
System.debug('number of mappings is '+zipCodeToCityMap.size());

Set<Integer> uniquesZipCodeSet=zipCodeToCityMap.keySet();
System.debug('all zip codes: '+uniquesZipCodeSet);
List<string> cityNameList=zipCodeToCityMap.values();
System.debug('all city names: '+cityNameList);
System.debug('is the zip code mapping empty? '+zipCodeToCityMap.isEmpty());

/*List vs Map
- list has one value, map has key and value set
- Map is the important collection
- list can have duplicates, map keys cannot have duplicates
- last value overrides in map, key duplicates
- list ordered collection, map has no order
- list adds values with .add() map has .put();*/

Map<string, Decimal> currISOCodeAndExchangeRateMap=new Map<string, Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);

system.debug('currency rate for INR is '+currISOCodeAndExchangeRateMap.get('INR'));
system.debug('currency rate for SAD is '+currISOCodeAndExchangeRateMap.containsKey('SAD'));

List<decimal> allValues=currISOCodeAndExchangeRateMap.values();
List<decimal> higherPrice=new List<Decimal>();
List<decimal> lowerPrice=new List<Decimal>();

for( decimal val:allValues){
    if(val>=1){
        higherPrice.add(val);
        System.debug(higherPrice);
    }else{
        lowerPrice.add(val);
        System.debug(lowerPrice);
        
    }
}

List<string> higherVal= new List<String>();
List<String> lowerVal= new List<String>();

for (string allStr:currISOCodeAndExchangeRateMap.keySet() ){
    if(currISOCodeAndExchangeRateMap.get(allStr)>=1){
        higherVal.add(allStr);

    }else{
lowerVal.add(allStr);

    }
}
System.debug('higher value is '+higherVal);
System.debug('lower values '+lowerVal);


















