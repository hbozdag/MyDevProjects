public with sharing class CleanUpOrg {
@future

    public static void deleteOrphanContacts() {

        List<Contact> noContact=[Select id, accountid from contact where accountid =null];
        delete noContact;
    }
    
@future
    public static void deleteOrphanOpportunities() {

        List<Opportunity> noOpp=[Select id, accountid from Opportunity where accountid =null];
        delete noOpp;
    }


}


