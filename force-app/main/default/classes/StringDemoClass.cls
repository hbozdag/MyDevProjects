public class StringDemoClass {
    public void stringMethod1() {
        string sessionDescription='learning string\'s methods in apex language.';

        //1.length 
        integer lengthOfStr=sessionDescription.length();
        system.debug('length of string is = '+lengthOfStr);

        //2. capitalize

        string sessionDescriptionInCaps=sessionDescription.toUpperCase();
        system.debug('in Caps= '+sessionDescriptionInCaps);

        //3. if contains 'apex' in it
        boolean containsApex=sessionDescription.contains('apex');
        system.debug('has apex??? ' +containsApex);

        boolean containsApex2=sessionDescriptionInCaps.contains('apex');
        system.debug('has apex??? '+containsApex2);

        boolean containsSalesforce=sessionDescription.contains('salesforce');
        system.debug('has salesforce?? '+ containsSalesforce);

        boolean containsApex3=sessionDescriptionInCaps.containsIgnoreCase('apex');
        system.debug('has apex??? '+containsApex3);



    }
}
