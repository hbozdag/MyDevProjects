public with sharing class SalesforceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){

        //create one empty list
        List<Salesforce_Ticket__c> newSTList= new List<Salesforce_Ticket__c>();
        //for each project create new ticket
        for(Salesforce_Project__c eachSP:spTriggerNew){
            Salesforce_Ticket__c st=new Salesforce_Ticket__c();
            st.Subject__c='Default ST';
            st.Salesforce_Project__c=eachSP.Id;
            //insert eachsp
            newSTList.add(st);
        }
if(!newSTList.isEmpty()) insert newSTList;
    }

    @future 
    public static void updateProjectDescription(Set<id> setSpId){
        List<Salesforce_Project__c> lstSp=[select id, description__c from Salesforce_Project__c where id in:setSpId];

        for(Salesforce_Project__c spRecord: lstSp){
            spRecord.Description__c=spRecord.Description__c+' Update from future!';
        }
        update lstSp;
    }
    public static void spCompletedStatus(
        List<Salesforce_Project__c> spTriggerNew,
        List<Salesforce_Project__c> spTriggeOld,
        Map<id, Salesforce_Project__c> spTriggerNewMap,
        Map<id, Salesforce_Project__c> spTriggerOldMap){

            Set<id> spIds=new Set<id>();
            for(Salesforce_Project__c spRecord:spTriggerNew){
                Salesforce_Project__c spNew=spRecord;
                Salesforce_Project__c spOld=spTriggerOldMap.get(spNew.id);
                if(spNew.Status__c=='Completed' && spOld.Status__c!='Completed'){
                    spIds.add(spNew.Id);
                }
            }
            if(!spIds.isEmpty()){
                updateTicketStatusCompleted(spIds);
            }

        }

        @future
        public static void updateTicketStatusCompleted(Set<Id> spIds){
            List<Salesforce_Ticket__c> listST=[Select id, status__c, Salesforce_Project__c from 
            Salesforce_Ticket__c where Salesforce_Project__c in:spIds and status__c!='Completed'];
            for(Salesforce_Ticket__c stRecord:listST){
                stRecord.Status__c='Completed';
            }
            update listST;
        }
}
