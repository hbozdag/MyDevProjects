public with sharing class ContactTriggerHandler {
//1.dont allow user to update contact if lead source is 'Partner Referral'

public static void contactUpdateValidation1(
    List<contact> cntTriggerNew, 
    List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap,
   Map<id, contact> cntTriggerOldMap ){
    for(contact eachContact:cntTriggerNew){
        if(eachContact.LeadSource=='Partner Referral'){
            eachContact.addError('Cannot update Partner Referral contacts');
        }
    }
 }

 //2. Don't allow user to update lead source
 public static void contactUpdateValidation2(
    List<contact> cntTriggerNew, 
    List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap,
   Map<id, contact> cntTriggerOldMap ){
    for(contact eachContact:cntTriggerNew){
        contact oldContact=cntTriggerOldMap.get(eachContact.id);
        if(eachContact.LeadSource !=cntTriggerOldMap.get(eachContact.id).LeadSource){
            
                eachContact.leadsource.addError(system.label.contactValidation2);
            
        }
    }
 }



}

