public with sharing class AccountsBatch implements Database.Batchable<sObject> {
    
    
    public Database.QueryLocator start(Database.BatchableContext bc){

       Database.QueryLocator ql= Database.getQueryLocator([Select id, description from account]);
       return ql;
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        for(account acc:scope){
            acc.Description +='...... Updated via Batch apex';
        }
        update scope;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('done with updating all the accounts');
        //how many records do we actually update?
    }
}
