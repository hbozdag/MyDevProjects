trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {

    if(trigger.isBefore && (trigger.isInsert || Trigger.isUpdate)){
        OpportunityTriggerHandler.updateStageOpp(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
    }


   /*if(trigger.isBefore && trigger.isInsert){
        OpportunityTriggerHandler.updateStageOpp(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
    }*/


}