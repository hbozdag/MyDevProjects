public with sharing class DmlDemo {
public static void dmlInsertDemo_stndObj(){
    //1. create new instance 
    Account acc=new account();

    //2. set fields
    acc.Name='Soft Innovas';
    acc.Website='www.softinnovas.com';
    acc.Active__c='Yes';

    //3. DML 
    insert acc;
}

public static void dmlInsertDemo_cstmObj(){
    Salesforce_Project__c sp= new Salesforce_Project__c();
    sp.Project_Name__c='Teach DML to falcons';
    sp.Description__c='All 50% are great learners';
    sp.Status__c='New';

    insert sp;
}

public static void dmlUpdateDemo_1(){
    Account acc= new Account();
    acc.Name='Soft Innovas';
    insert acc;

    System.debug('acc after insert= '+acc);
    acc.Name='Salesforce Inc.';
    update acc;
    System.debug('acc after update= '+acc);
}

public static void dmlUpdateDemo_3(){
    //soql returns bcz limit 1
    account acc=[select id, name from account where name='SoftInnovas Incorporation.' LIMIT 1];
    acc.name='Soft Innovas';
    update acc;
    System.debug('acc= '+acc);
}

public static void dmlUpdateDemo_2(){
    Account acc= [Select ID, name from Account where name='SoftInnovas Inc.' limit 1];
// create contact's instance
    contact ct=new Contact();

    //set contact fields
    ct.LastName='Biden';

    //sert account field relationship
    ct.AccountId=acc.id;
    insert ct;
}
public static void dmlUpdateDemo_2_CO(){
    //1.soql to get latest salesforce project

    Salesforce_Project__c sp=[Select id, name from salesforce_project__c order by createddate desc limit 1];

    //2 crate tickets instance 
    Salesforce_Ticket__c st=new Salesforce_Ticket__c();
    st.Subject__c='Learn Apex';
    st.Priority__c='High';
    st.Status__c='New';
    st.Requested_by_Date__c=date.newInstance(2021, 12, 06);
    st.Salesforce_Project__c=sp.Id;

    insert st;
    System.debug('st = '+st);

}

public static void dmlMultipleRecordInsert_right(){
List<account> listAccount= new List<Account>();

account acc= new Account();
acc.Name='SoftInnovas 7Jan v0.0';
acc.AccountNumber='ACSI-1';
ACC.Active__c='Yes';
listAccount.add(acc);

for(Integer i=1; i<5; i++){
    Account acc2=new account();
    acc2.Name='SoftInnovas 7Jan v'+i;
    acc2.AccountNumber='ACSI-1 '+i;
    acc2.Active__c='Yes';
    listAccount.add(acc2);

}
if(!listAccount.isEmpty())
insert listAccount;
}

public static void dmlMultipleRecordUpdate_right(){
    List<Account> listAcc=[Select id, name from Account where CreatedDate=TODAY];

    List<account> updateAccounts= new List<account>();
    Integer i=1;
    for(account acc:listAcc){
        acc.Name='SoftInnovas #'+i;
        updateAccounts.add(acc);
        i++;
    }
    
    System.debug('number of accounts to update '+updateAccounts.size());
if (!updateAccounts.isEmpty())
update updateAccounts;
}

public static void deleteEverything(){
    List<Account> listAcc=[Select id, name from Account where CreatedDate=TODAY];
 Delete listAcc;

 //or 
 // Delete[Select id, name from Account where CreatedDate=TODAY];

}



}
