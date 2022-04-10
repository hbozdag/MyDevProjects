public with sharing class CaseTriggerHandler {
    public static void typeUpdateError(
        List<Case> caseTriggerNew,
        List<Case> caseTriggerOld,
        Map<Id,case> caseTriggerNewMap,
        Map<Id,case> caseTriggerOldMap){
            for( case  eachCase:caseTriggerNew){
                if(eachCase.Type!=caseTriggerOldMap.get(eachCase.id).type){
                    eachCase.type.addError('Type cannot be updated');
                }
            }
    }

    public static integer countTriggerExecution=0;
    public static integer countRecordsUpdated=0;



}
