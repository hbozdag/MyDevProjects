public class ValidateAddress {
    public void validateHomeAddress() {

        string houseName='Home Sweet Home';
        string streetName='Honeysuckle';
        string cityName=' Richardson      & Dallas ';
        string stateName='Texas';
        string stateIsoCode='us-TX';
        string countryName='usa';
        string countryIsoCode='at 3622-2';

        integer numOfChar=streetName.length();
        system.debug('Number of characters in street name is '+ numOfChar);

        boolean containHouseName= streetName.contains(houseName);
        system.debug('Does the street name have house name??? ' + containHouseName);

        boolean containsISO= streetName.contains(stateIsoCode);
        system.debug('street name has State ISO code? '+ containsISO);

        string stateIsoCodeInCaps=stateIsoCode.toUpperCase();
        system.debug('state ISO Code is ' + stateIsoCodeInCaps);

        string countryIsoCodeInCaps=countryIsoCode.toUpperCase();
        system.debug('country ISO code is '+countryIsoCodeInCaps);

        string countryNameInCaps=countryName.toUpperCase();
        system.debug('country name is '+ countryNameInCaps);

        string cityNameInLow= cityName.toLowerCase();
        system.debug('city name is '+cityNameInLow);

        string stateNameInLow=stateName.toLowerCase();
        system.debug('state name is '+stateNameInLow);

        string houseFullName= houseName +' at ' +streetName;
        system.debug('my address is '+ houseFullName);

        boolean st=streetName.containsAny('suc');
        system.debug(st);

        boolean st1=streetName.containsAny('p');
        system.debug(st1);

        string cn=cityName.trim();
        system.debug(cn);

        boolean comparison=streetName.equals(stateName);
        system.debug(comparison);




     







    }
}
