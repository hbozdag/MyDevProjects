trigger CaseTrigger on Case (before insert, before update) {

    //, before update, after insert, after update


    //when you are done practicing triggers delete casetriggerhandler from class, case trigger from trigger and mytriggerany.apex


   /* system.debug('this is my case before insert trigger');
    system.debug('this is my case after insert trigger');

    if(trigger.isBefore && trigger.isInsert){
        system.debug('I only run when it is before and insert');
    }

    if(trigger.isBefore && trigger.isUpdate){
        system.debug('I only run when it is before and update');
    }
    */

   
/*
    if(trigger.isBefore && trigger.isUpdate){
        Map<id, case> allCases=trigger.newMap;
        Map<id, case> oldCases=trigger.oldMap;

        integer numofupdates=0;

        for(Id eachCase:allCases.keySet()){
            string oldtype=oldCases.get(eachCase).type;
            string newType=allCases.get(eachCase).Type;

            if(oldtype !=newType){
                System.debug('type is updated');
                numofupdates++;
            }else{
                system.debug('No type update needed.');
            }

        }
        System.debug('number of udpates are '+numofupdates);
    }*/

    /*
    if(trigger.isAfter && trigger.isInsert){
        system.debug('Check new cases');
        List<Case> allCases=trigger.new;
       
        for (Case eachCase:allCases){

    System.debug('case number is '+eachCase.CaseNumber+', and case type is '+eachCase.type);
            
        }
        System.debug('number of inserted records: '+allCases.size());
    }*/
/*
    List<Case> myCases=Trigger.new;
    if (trigger.isAfter) {
        System.debug('all inserted records are: '+myCases);
        System.debug('# of inserted cases is: '+myCases.size());
        
    }*/
/*
    if(trigger.isAfter && trigger.isInsert){

        List<case> allCases=trigger.new;
        System.debug('here are all the cases: '+allCases);

        for(case eachCase:allCases){
            System.debug('Case number is '+eachCase.CaseNumber +', and type is '+eachCase.Type);
            
        }
        System.debug('# of inserted cases is: '+allCases.size());
    }*/

    /*if(trigger.isBefore){
        CaseTriggerHandler.typeUpdateError(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }*/

  //  System.debug('before insert case');

    if (trigger.isUpdate){
        //update the numebr of times trigger executed
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('total number of times trigger executed till now '+CaseTriggerHandler.countTriggerExecution);

        //update the number of records udpated 
        CaseTriggerHandler.countRecordsUpdated+=trigger.size;
        System.debug('total number of records updated till now '+CaseTriggerHandler.countRecordsUpdated);
        
    }
}