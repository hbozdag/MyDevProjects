public class CustomerTriggerHandler {
    public static void UpdatePayment(
        List<Customers__c> cusTriggerNew,
        List<Customers__c> cusTriggerOld,
        map<id, Customers__c> cusTriggerNewMap,
        map<id, Customers__c> cusTriggerOldMap) {
        Set<Id> setCusIds = new set<id> ();
        Set<id> InactiveSetIds = new set<id>();
        for(Customers__c cusVar:cusTriggerOld){
            if(cusVar.Active__c == true){
                SetCusIds.add(cusVar.Id);
            }
            if(cusVar.Active__c == false){
                InactiveSetIds.add(cusVar.Id);
            }
        }
        if(! setCusIds.isEmpty()){
            List<Payments__c> payList = [select id from Payments__c where Customers__c in : setCusIds];
            delete payList;
        }
        if(! InactiveSetIds.isEmpty()){
            List<Payments__c> payList2 = [select id from Payments__c where Customers__c in : InactiveSetIds and mode__c = 'Online'];
            delete payList2;
        }
    }
}