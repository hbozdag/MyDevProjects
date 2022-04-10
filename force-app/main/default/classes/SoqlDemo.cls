public with sharing class SoqlDemo {

    //SOQL Query always returns the List <sObject>
    public static void accountSOQL_1() {

        List<Account> listAcc=[Select ID, name FROM account where name like '%A%'];
        System.debug('Account list = '+ listAcc);
    

    //we can write SOQL code without list if we are calling only one record. when it is more than one it must be LIst
    Account acc=[Select ID, name FROM account ORDER BY CreatedDate DESC LIMIT 1];
    //here we are returnig only one record, so it can be assigned to account instead of List<account> when we havwe only one record
    System.debug('Latest account created is '+acc);

    }

    public static void accountSOQL_2(){

        Account acc=[SELECT ID, Name, Phone, Accountnumber from Account 
                     ORDER BY CreatedDate desc LIMIT 1 ];

          System.debug('latest account created is '+acc);

          //storing values in variable
          string accName=acc.Name;
          string accPhone=acc.Phone;
          System.debug('accName = '+ accName+', phone is '+accPhone);
          system.debug('account number is '+acc.AccountNumber);           
    } 

public static void accountSOQL_3(){

    List<account> listAcc= [SELECT ID, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];

    System.debug('All accounts are '+listAcc);

    for(account eachAccount:listAcc){
        ID accID=eachAccount.Id;
        string accName=eachAccount.name;
        string accPhone=eachAccount.Phone;
        System.debug('Account id is '+accID+', accName = '+ accName+', phone is '+accPhone);
        system.debug('account number is '+eachAccount.AccountNumber); 

    }
}

public static void childtoParent_SOQL1(){
    List<CONTACT> listCnt= [select id, name, account.name from contact where Account.industry ='Energy'];

    for(contact eachContact:listCnt){

        //access parent's field name using dot operation
        string accName=eachContact.Account.Name;
        System.debug('contact name is '+eachContact.name+ ', its acc is '+accName);
    }
}

public static void soqlDemoFilter(){
    string accNameFilter='Salesforce Inc.';
    List<account> listAcc=[select id, name from account where name =:accNameFilter];
    System.debug(listAcc);
}

public static void soqlDemo_Filter(String accNameFilter){
    List<account> listAcc=[select id, name from account where name =:accNameFilter];
    System.debug(listAcc);
}

public static void childtoParent_SOQL2(){
    List<Salesforce_Ticket__c> listCount= [select id, name, subject__c, priority__c, salesforce_project__r.project_name__c, salesforce_project__r.status__c 
                            from salesforce_ticket__c];

                          //  system.debug(listCount);

  for(Salesforce_Ticket__c eachTicket:listCount){

    string prName=eachTicket.salesforce_project__r.project_name__c;
    string prStatus= eachTicket.salesforce_project__r.status__c;

    system.debug('Project name is '+prName);
    System.debug('Project status is '+prStatus);


    }
}

public static void parentToChild_SOQL1(){
    List<Account> accountWithOppList= new  List<Account>();

    accountWithOppList =[Select name, annualRevenue, (Select name, amount from opportunities where stagename='Closed Won') from account where type ='Customer - Direct'];

    for(account acc:accountWithOppList){
        System.debug('Account name : '+acc.Name+' its annual revenue is --> '+acc.AnnualRevenue);
List<Opportunity> listOpp=acc.Opportunities;
//System.debug('# of opps: '+listOpp.size());  -->this is one way of writing size
Integer countOpp=0;

for( Opportunity opp:listOpp){
    System.debug('opp name '+opp.Name);
    System.debug('opp amount '+opp.Amount);
    countOpp++;
}
System.debug('opp count is '+countOpp);
    }

}

//we want to count high priority ticket and number of tickets for each project
public static void soqlDemo5(){
    List<salesforce_project__c> ListSP=[SELECT ID,name, Project_name__c, (SELECT name, subject__c, priority__c FROM salesforce_tickets__r) FROM salesforce_project__c];
    //project ID: SP-1001 - tOTAL # ST: 2 and High Priority ST : 1
    Integer totalHighPriorityST=0;
    for(salesforce_project__c eachSP: ListSP){
        List<Salesforce_Ticket__c> listST=eachSP.Salesforce_Tickets__r;
        string spName=eachSP.name;
        Integer totalSt=listST.size();
        Integer highPriorityST=0;
        for(Salesforce_Ticket__c eachST:listST){
            if(eachST.Priority__c=='High'){
          totalHighPriorityST++;
            highPriorityST++;
            }
        }
        System.debug('Project ID : '+spName+ ' total # ST: '+totalSt +' high priority ST '+highPriorityST);
    }
System.debug('total high priority tickets in the org is '+ totalHighPriorityST);
}

public static void sampleSoql4() {
    List<Account> accountWithOppList = [Select name, annualRevenue,
    (select name, amount from opportunities where stageName = 'Closed Won'),
    (select lastname from Contacts)
    From Account where type = 'Customer - Direct'];

    for(account soqlAcc: accountWithOppList){
        system.debug('Account name: ' + soqlAcc.Name + ' its revenue -> ' + soqlAcc.AnnualRevenue);
        List<Opportunity> listOpp = soqlAcc.Opportunities;
        //system.debug('# of opps : ' + listOpp.size());
        integer countOpp = 0;
        for (opportunity opp : listOpp) {
            system.debug('opp name ' + opp.Name);
            system.debug('opp amount ' + opp.Amount);
            countOpp++;
        }
        system.debug('opp count = ' + countOpp);
    }
}
}
