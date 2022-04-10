@isTest

public with sharing class DmlDemoTest {

    @isTest
     static void DmlDemoTest1(){
        DmlDemo.dmlInsertDemo_stndObj();
        List<account> listAcc=[Select id, name from account ];
        System.assertEquals(1, listAcc.size());
        Account acc=listAcc[0];
        System.assertEquals('Soft Innovas', acc.Name);
    }
@isTest 
private static void DmlDemoTest2(){
    Account acc=new Account();
    acc.Name='SoftInnovas Inc.';
    insert acc;

    DmlDemo.dmlUpdateDemo_2();
    List<contact> listContact=[Select id, lastname from contact];
    System.assertEquals(1, listContact.size());
    System.assertEquals('Biden', listContact[0].LastName);
}

@isTest 

public static void DmlDemoTest3(){
    DmlDemo.dmlInsertDemo_cstmObj();
    List<Salesforce_Project__c> spList=[Select status__c from Salesforce_Project__c];
    System.assertEquals(1, spList.size());
    System.assertEquals('New', spList[0].Status__c);
}

@isTest 

public static void DmlDemoTest4(){
    DmlDemo.dmlUpdateDemo_1();
    List<Account> acc=[Select name from account];
    System.assertEquals(1, acc.size());
    System.assertEquals('Salesforce Inc.', acc[0].Name);
}

@isTest 

public static void DmlDemoTest5(){

    Account accNew= new Account();
    accNew.name='SoftInnovas Incorporation.';
    insert accNew;
    Dmldemo.dmlUpdateDemo_3();
    List<account> acc=[select id, name from account];
    System.assertEquals(1, acc.size());
    System.assertEquals('Soft Innovas', acc[0].Name);
}

@isTest 

public static void DmlDemoTest5a(){

    Salesforce_Project__c spNew= new Salesforce_Project__c();
    spNew.Project_Name__c='My project';
     insert spNew;
    

    DmlDemo.dmlUpdateDemo_2_CO();

   List<Salesforce_Ticket__c> newst=[Select Salesforce_Project__c, Subject__c, status__c from Salesforce_Ticket__c where Subject__c='Learn Apex'];
    System.assertEquals(1, newst.size());
    System.assertEquals('Learn Apex', newst[0].Subject__c);
  
}

@isTest 

public static void DmlDemo5b(){
    Salesforce_Project__c sp= new Salesforce_Project__c();
    sp.Project_Name__c='Teach Tests to falcons';
    sp.Description__c='All 50% are great learners';
    sp.Status__c='New';
    insert sp;

    DmlDemo.dmlUpdateDemo_2_CO();

    List<Salesforce_Ticket__c> st=[Select Salesforce_Project__c, Subject__c, Priority__c, status__c from Salesforce_Ticket__c where Subject__c='Learn Apex'];
     System.assertEquals(1, st.size());
     System.assertEquals(sp.Id, st[0].Salesforce_Project__c);
   



}



@isTest 

public static void DmlDemoTest6(){

    Dmldemo.dmlMultipleRecordInsert_right();
    List<account> acc=[Select name from account];
    System.assertEquals(5, acc.size());
    System.assertEquals('SoftInnovas 7Jan v4', acc[4].Name);

}

@istest 

public static void DmlDemoTest7(){

    account accNew= new account();
    accNew.Name='Change Me';
    insert accNew;

    DmlDemo.dmlMultipleRecordUpdate_right();
    List<account> acc=[Select id, name from Account where CreatedDate=TODAY];
    System.assertEquals('SoftInnovas #1', acc[0].Name);
}

@isTest 

public static void DmlDemoTest8(){
    DmlDemo.deleteEverything();
    List<Account> acc=[Select id, name from Account where CreatedDate=TODAY];
    System.assertEquals(0, acc.size());
}

}
