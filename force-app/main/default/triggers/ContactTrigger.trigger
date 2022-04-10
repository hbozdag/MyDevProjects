trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {
/*

    //will be true before insert  & before update
    if(trigger.isBefore){
        System.debug('We are in before trigger');
        if(trigger.isInsert){
            System.debug('before trigger insert called');
        }
        if(trigger.isUpdate){
            System.debug('before update trigger called');
        }
    }

    //will be true after insert and after update 

    if(trigger.isAfter){
        System.debug('We are in after trigger');
        if(trigger.isInsert){
            System.debug('after trigger insert called');
        }
        if(trigger.isUpdate){
            System.debug('after update trigger called');
        }
    }*/
    /*
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }*/


    //Placeholder for collecting all account Ids fow which no of contacts need to be updated

    /*Set<Id>  accountIds=new Set<Id>();
    
    if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
        for(Contact c:trigger.new){
            if(trigger.isUpdate){
                //Update operation and reparenting happened
                if(c.AccountId!=trigger.oldMap.get(c.Id).accountId){
                    accountIds.add(c.AccountId);//adding new accountId
                    accountIds.add(trigger.oldMap.get(c.id).accountId);//added old account id

                }
            }
            else 
            //for insert and undelete collecting account ids
            accountIds.add(c.AccountId);
        }
    }
    system.debug('account ids: '+accountIds);
    if(trigger.isdelete){
        for(contact c:trigger.old){
            accountIds.add(c.AccountId);
        }
    }

    //we have all account ids now. 
    if(!accountIds.isEmpty()){
        List<account> accWithRelatedContactList=new List<account>();
        accWithRelatedContactList= [Select id, Number_of_Contacts__c, (Select id from contacts)from account where id=:accountIds];

        for(account acc:accWithRelatedContactList){
            List<Contact> contactsList=new List<Contact> ();
            contactsList=acc.contacts;
            acc.Number_of_Contacts__c=contactsList.size();
            update accWithRelatedContactList;
        }

    }*/
/*
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    */
}