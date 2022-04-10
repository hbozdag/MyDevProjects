//map collection
//key datatype,value datatype var=new /key datatype,value datatype

map<string, string> mapCntCurency=new Map<String,String>();
mapCntCurency.put('USA', 'Dollar');
mapCntCurency.put('Canada', 'Dollar');
mapCntCurency.put('Japan', 'Yen');
mapCntCurency.put('France', 'Euro');
mapCntCurency.put('India', 'Rupees');
mapCntCurency.put('India', 'Rupee');
mapCntCurency.put('El Salvador', 'BTC');
mapCntCurency.put('Turkey', 'Lira');

System.debug('map of country vs currency '+ mapCntCurency);

//.get(key); will always get us the value

string indiaCurrency=mapCntCurency.get('India');
string turkeyCurrency=mapCntCurency.get('Turkey');

System.debug('india currency is '+ indiaCurrency);
System.debug('Turkey currency is '+turkeyCurrency);

Set<String> countrySet=mapCntCurency.keySet();
System.debug('countries in map '+countrySet);

List<String> currencyList=mapCntCurency.values();
System.debug('currencies in map: '+currencyList);

//for loop on key set
//for(string eachKey: mapCntCurrency.keySet())

Set<string> countriesSet = mapCntCurency.keySet();
for(string eachKey:countriesSet){
    string printString=' Country is '+eachKey;
    System.debug(printString);

    string eachCurrency=mapCntCurency.get(eachKey);
    printString +=', its currency is '+eachCurrency;
    System.debug(printString);

}


string mapMonth26=MapDemo.retrieveMonth(26);
System.debug('26th month '+mapMonth26);

system.debug(MapDemo.retrieveMonth(13));