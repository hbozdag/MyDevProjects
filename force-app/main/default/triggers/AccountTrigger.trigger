trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

/*
// print this only when inserting
if(Trigger.isInsert)
System.debug('before insert trigger.');

//print this only when updating
if(Trigger.isUpdate)
System.debug('before update trigger.');*/


/*System.debug('trigger executing...');
//true when code is running in before context
if(Trigger.isBefore)
System.debug('before insert trigger.');

//true when code is running in after context
if(Trigger.isAfter)
system.debug('after insert trigger');*/


/*
if(Trigger.isBefore && trigger.isInsert){
    System.debug('before insert trigger called, yeah');
}
if(Trigger.isAfter && trigger.isInsert){
    System.debug('after trigger insert called');
}

if(Trigger.isBefore && trigger.isUpdate){
    System.debug('before update trigger called, OMG');
}
if(Trigger.isAfter && trigger.isUpdate){
    System.debug('after update trigger called, yeah');
} */


//only.isAfter(means it will be true )

/*List<Account> accountNew=trigger.new;
if(trigger.isAfter){
    System.debug('after trigger : '+accountNew);
    System.debug('# of account inserted '+accountNew.size());
}*/

/*
if(trigger.isAfter && trigger.isInsert){
    System.debug('trigger.new after insert = '+ trigger.new);
    //trigger.new returns List<sObject>
    List<Account> newAccounts=trigger.new;

    System.debug('total account inserted= '+newAccounts.size());

    for(account acc:newAccounts){
        system.debug('Account id is = '+acc.Id+', account name is '+acc.Name);
    }
} */

/*
list<account> newAccounts = trigger.new;
    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before createdDate = ' + acc.CreatedDate);
        }
    }  
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger.new after insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before createdDate = ' + acc.CreatedDate);
        }
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before update lastmodifiedDate = ' + acc.LastModifiedDate);
        }
    }       
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('trigger.new update insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before update lastmodifiedDate = ' + acc.LastModifiedDate);
        }
    }

*/

/*if(trigger.isBefore && trigger.isInsert){
system.debug('trigger.new before insert '+trigger.new);
}
if(trigger.isAfter && trigger.isInsert){
    system.debug('trigger.new after insert '+trigger.new);
}*/


/*
//there is no old in insert. it will give us null
if(trigger.isBefore && trigger.isInsert){
system.debug('trigger.old before insert '+trigger.old);
}
if(trigger.isAfter && trigger.isInsert){
    system.debug('trigger.old after insert '+trigger.old);
}

if(trigger.isBefore && trigger.isUpdate){
system.debug('trigger.old before update '+trigger.old);
}
if(trigger.isAfter && trigger.isUpdate){
    system.debug('trigger.old after update '+trigger.old);
}*/

/*
if(trigger.isAfter){
    //want to print old names on update. we can also do it in before update

    if(trigger.isUpdate){
        for(account oldAcc:trigger.old){
            System.debug('old acc ID= '+oldAcc.id+ ' old acc name= '+oldAcc.name);
        }
        for(account newAcc:trigger.new){
            System.debug('new acc ID= '+newAcc.id+ ' new acc name= '+newAcc.name);
        }
    }
} */

/*
if(trigger.isAfter){
    system.debug('after trigger of account object ');

    List<account> newAccounts=trigger.new;
    System.debug('size trigger.new in after trigger= '+trigger.new.size());
    Set<id> accIdSet= new Set<Id>();
    for(account acc:newAccounts){
        accIdSet.add(acc.Id);
    }
    System.debug('set of acc ids '+accIdSet);
}*/

/*map<id, account> trgNewMap=trigger.newMap;
Map<Id,Account> trgOldMap=trigger.oldMap;

if(trigger.isBefore && trigger.isInsert){
    System.debug('=======BEFORE INSERT========');
    System.debug('before insert old map= '+trgOldMap);
    System.debug('before insert new map= '+trgNewMap);
}
if(trigger.isAfter && trigger.isInsert){
    System.debug('=======AFTER INSERT========');
    System.debug('after insert old map= '+trgOldMap);
    System.debug('after insert new map= '+trgNewMap);
}
if(trigger.isBefore && trigger.isUpdate){
    System.debug('=======BEFORE UPDATE========');
    System.debug('before update old map= '+trgOldMap);
    System.debug('before update new map= '+trgNewMap);
}
if(trigger.isAfter && trigger.isUpdate){
    System.debug('=======AFTER UPDATET========');
    System.debug('after update old map= '+trgOldMap);
    System.debug('after update new map= '+trgNewMap);
}*/
/*
if(trigger.isAfter && trigger.isUpdate){
    System.debug('after update trigger of account object.');
    map<id, account> accNewMap=trigger.newMap;
    map<id, Account> accOldMap=trigger.oldMap;

    for(ID eachId: accNewMap.keySet()){
        System.debug('Acc DI= '+eachId);
        //get value using .get(key) method
        Account newAcc=accNewMap.get(eachId);
        system.debug('new acc name '+newAcc.name );

        Account oldAcc=accOldMap.get(eachId);
        system.debug('old acc name '+oldAcc.name );

    }
}*/

/*
if(trigger.isBefore && trigger.isUpdate){

 map<id, Account> accNewMap=trigger.newMap;
 map<id, Account> accOldMap=trigger.oldMap;

 Integer countWSUpdated=0;
 for(ID eachAccId:trigger.newMap.keySet()){
    // Account oldAcc=accOldMap.get(eachAccId);
     //string oldWS=oldAcc=oldAcc.Website;
     string oldWS=trigger.oldMap.get(eachAccId).Website;

     Account newAcc=trigger.newMap.get(eachAccId);

     if(oldWS!=newAcc.Website){
         system.debug('for account '+newAcc.name+', new website is '+newAcc.Website);
         countWSUpdated++;
     }

 }
system.debug('number of accounts webiste updated -->'+countWSUpdated);
    
}*/

/* 
//this is the firs way to write this code. Way #1
if(trigger.isBefore){
    System.debug('before insert/update trigger on account object');
  //  map<id, Account> accNewMap=trigger.newMap;
  //  map<id, Account> accOldMap=trigger.oldMap;

    for (Account eachAcc:trigger.new){
        if(trigger.isInsert && eachAcc.Active__c=='Yes'){
            //just set the fiedl value
            eachAcc.Description='Account is now active. Enjoy!';
        }
        if(trigger.isUpdate){
            if(eachAcc.Active__c =='Yes' && 
            trigger.oldMap.get(eachAcc.Id).Active__c != trigger.newMap.get(eachAcc.Id).Active__c){
                eachAcc.Description='Account is now active. Enjoy!';

            }
        }
    }

}*/

/*
   //there is another way to write this above code. !!!!!!!!!!!!!!!!! Way #2
if(trigger.isBefore){
    System.debug('before insert/update trigger on account object');
    map<id, Account> accNewMap=trigger.newMap;
    map<id, Account> accOldMap=trigger.oldMap;
    for(account eachAcc:trigger.new){
        if(trigger.isInsert && eachAcc.Active__c=='Yes'){
            eachAcc.Description='Account is now active. Enjoyyyy!';
        }
        if(trigger.isUpdate){
            Account newAcc=accNewMap.get(eachAcc.Id);
            Account oldAcc=accOldMap.get(eachAcc.id);
            if(eachAcc.Active__c=='Yes' && oldAcc.Active__c!=newAcc.Active__c){
                eachAcc.Description='Account is now active. ENJOYY!';
            }
        }
    }
}
*/
/*
//there is another way to write this above code. !!!!!!!!!!!!!!!!! Way #3
if(trigger.isBefore){
    System.debug('before insert/update trigger on account object');
    for(account eachAcc:trigger.new){
        boolean updateDesc=false;
        if(trigger.isInsert && eachAcc.Active__c=='Yes'){
            updateDesc=true;
        }
        if(trigger.isUpdate){
            if(eachAcc.Active__c=='Yes' && trigger.oldMap.get(eachAcc.id).Active__c!= trigger.newMap.get(eachAcc.id).Active__c){
                updateDesc=true;
            }
    }
    if(updateDesc){
        eachAcc.description='Account is now active. Enjoyyyy!';
    }
    }
}*/
/*
if(trigger.isBefore){
    System.debug('before insert/update trigger on account object');
    AccountTriggerHandler.updateAccountDescription(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    
    
}*/

/*
if(trigger.isAfter && trigger.isUpdate){
    AccountTriggerHandler.updateVIPForAllContacts(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
}*/
//==================================================
/*
if(trigger.isAfter && trigger.isUpdate){
    AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.oldMap);
}

if (trigger.isBefore) {
    system.debug('before insert/update trigger on account');
    map<id, account> accNewMap = trigger.newMap;
    map<id, account> accOldMap = trigger.oldMap;
    for (account eachAcc : Trigger.new) {
        if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
            eachAcc.Description = 'Account is now active. ENJOYYYY!';
        }
        if(trigger.isUpdate){
            Account newAcc = accNewMap.get(eachAcc.id);
            Account oldAcc = accOldMap.get(eachAcc.Id);
            if(eachAcc.Active__c == 'Yes' && 
                oldAcc.Active__c != newAcc.Active__c ){
                eachAcc.Description = 'Account is now active. ENJOYYYY!';
            }
        }
    }
}*/
/*
if (trigger.isBefore) {
    AccountTriggerHandler.customerPriorityCheck(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    
}*/

if(trigger.isAfter && trigger.isUpdate){
    AccountTriggerHandler.updatePhoneForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.oldMap);
}
}

