public with sharing class AccountTriggerHandler {
public static void updateAccountDescription(
List<Account> accTriggerNew, 
List<Account> accTriggerOld,
Map<id, Account> accTriggerNewMap,
Map<id, Account> accTriggerOldMap  ){

for(account eachAcc:accTriggerNew){
Boolean updateDesc=false;
//here we are not passing .isInsert
//we will use trigger.old to determine that
if(accTriggerOldMap == null && eachAcc.Active__c=='Yes'){
    updateDesc=true;
}
if(accTriggerOldMap != null ){
    if(eachAcc.Active__c=='Yes' &&
    accTriggerOldMap.get(eachAcc.id).Active__c!=accTriggerNewMap.get(eachAcc.id).Active__c){
        updateDesc=true;
    }
}
if(updateDesc){
    eachAcc.description='Account is now active. Enjoyyyy!';
}

}
}

public static void updateVIPForAllContacts(
    List<Account> accTriggerNew, 
    List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, 
    Map<id, account> accTriggerOldMap){

        //get set of account IDs where only VIP field is updated
        set<id> setAccIds= new set<id>();
        for(account eachAcc:accTriggerNew){
            //check if VIP field is updated
            if(eachAcC.VIP__c!=accTriggerOldMap.get(eachAcc.Id).VIP__c){
                setAccIds.add(eachAcc.id);
            }
        }
        //get list of contacts for accounts where VIP field is updated
        List<contact> listContact=[Select id, name, account.id, VIP__c from contact where account.id in:setAccIds];

        //now we want to update contacts records
        for(contact eachContact:listContact){
            //get account from triggernewMap
            Account acc=accTriggerNewMap.get(eachContact.account.id);
            boolean accVIP=acc.VIP__c;
            eachContact.VIP__c=accVIP;
        }
        update listContact;
    }

    public static void customerPriorityCheck(
        List<Account> accTriggerNew, 
    List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, 
    Map<id, account> accTriggerOldMap){


        for(account eachAcc:accTriggerNew){
            boolean highPri=false;
String oldPriority=accTriggerOldMap.get(eachAcc.id).CustomerPriority__c;
String newPriority=accTriggerNewMap.get(eachAcc.id).CustomerPriority__c;

            if(accTriggerOldMap==null && eachAcc.CustomerPriority__c=='High'){
                highPri=true;
            }if (accTriggerOldMap!=null){
                if(oldPriority=='High' && oldPriority==newPriority){
                    highPri=true;
                } if(oldPriority!='High' && newPriority=='High')
                    highPri=true;
            }
            if(highPri){
                eachAcc.Description='Customer Priority is high. This account is being directed to urgent response team';
            }else{
                eachAcc.Description='Please create an action plan for this customer';
            }

        }
    }

    public static void updatePhoneForAllContacts(
        List<Account> accTriggerNew, 
    List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, 
    Map<id, account> accTriggerOldMap){

        set<id> setAccIds=new Set<id>();
        for(account eachAcc:accTriggerNew){
            if(eachAcc.Phone!=accTriggerOldMap.get(eachAcc.id).phone){
                setAccIds.add(eachAcc.id);
            }
        }

        List<contact> cntList=[Select id, name, otherphone, mobilephone, account.phone from contact where account.id in :setAccIds];

        for(contact eachCont:cntList){
            account accNew=accTriggerNewMap.get(eachCont.Account.id);
            account accOld=accTriggerOldMap.get(eachCont.Account.id);
            string oldPhone=accOld.Phone;
            string newPhone=accNew.Phone;
            eachCont.otherPhone=oldPhone;
            eachCont.MobilePhone=newPhone;

        }
        update cntList;
    }
}


