public with sharing class SalesforceTicketBatch implements Database.Batchable<sObject>{


    public Database.QueryLocator start (Database.BatchableContext ob){
        Database.QueryLocator queryL= Database.getQueryLocator([Select Id, status__c, lastModifiedDate,
                                              CreatedDate from Salesforce_Ticket__c where Status__c!='Not Started']);
        return queryL;
    }
 
    public void execute(Database.BatchableContext st, List<Salesforce_Ticket__c> sfTicketList){
        //List<Salesforce_Ticket__c> newStatus = new List<Salesforce_Ticket__c>();
        for(Salesforce_Ticket__c eachSt : sfTicketList){
            if(eachSt.LastModifiedDate == eachSt.createdDate){
                eachSt.status__c = 'Not Started';
            }
        }
        update sfTicketList;
    }
    public void finish(Database.BatchableContext fp){
        System.debug('New status should be updated');
    }
 
 }
 