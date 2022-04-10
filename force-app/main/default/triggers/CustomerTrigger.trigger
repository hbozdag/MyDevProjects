trigger CustomerTrigger on Customers__c (before insert, before update, after insert, after update, before delete, after delete) {

    if(trigger.isBefore && trigger.isDelete){
        CustomerTriggerHandler.UpdatePayment(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }



}