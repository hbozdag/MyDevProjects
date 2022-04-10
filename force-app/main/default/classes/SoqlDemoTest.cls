@isTest 

public with sharing class SoqlDemoTest {

    @TestSetup
    static void testSetup(){
        account acc1=new Account();
        acc1.name='SI Test';
        acc1.Industry='Energy';

        account acc2=new Account();
        acc2.name='UI Test';
        acc2.Industry='Energy';

        account acc3=new Account();
        acc3.name='PI Test';
        acc3.Industry='Banking';

        List<account> listAcc=new List<Account>{acc1,acc2, acc3};

        insert listAcc;

        List<Contact> listContact=new List<Contact>();
        for(integer i=0; i<300; i++){
            Contact cnt=new Contact();
            cnt.LastName='Test SOQL';
            if(i<100){
                cnt.AccountId=acc1.id;
            }else if(1<200){
                cnt.AccountId=acc2.id;
            }else if(i<300){
                cnt.AccountId=acc3.id;
            }
            listContact.add(cnt);
        }
        insert listContact;

        
    }
/*
    @isTest 
    private static void TestMethod1() {
        account acc1=new Account();
        acc1.name='SI Test';
        acc1.Industry='Energy';

        account acc2=new Account();
        acc2.name='UI Test';
        acc2.Industry='Energy';

        account acc3=new Account();
        acc3.name='PI Test';
        acc3.Industry='Banking';

        List<account> listAcc=new List<Account>{acc1,acc2, acc3};

        insert listAcc;

        List<Contact> listContact=new List<Contact>();
        for(integer i=0; i<300; i++){
            Contact cnt=new Contact();
            cnt.LastName='Test SOQL';
            if(i<100){
                cnt.AccountId=acc1.id;
            }else if(1<200){
                cnt.AccountId=acc2.id;
            }else if(i<300){
                cnt.AccountId=acc3.id;
            }
            listContact.add(cnt);
        }
        insert listContact;

        //we consumed quite a few heap size and well as 2 dmls of couple hundred records
        //so before runnign our actual method we want to reset our governer limits

        test.startTest();
        SoqlDemo.childtoParent_SOQL1();
        test.stopTest();
        System.assert(listContact.size()>0);

    } */

    @isTest 
    private static void TestMethod1() {
        List<Contact> listContact=[Select id, name from contact];

        test.startTest();
        SoqlDemo.childtoParent_SOQL1();
        test.stopTest();
        System.assert(listContact.size()>0);

    }

    @isTest
    private static void testMethod2() {
        list<account> listAcc = [select id, name, type from Account];
        for (account acc : listAcc) {
            acc.type = 'Customer - Direct';
        }
        update listAcc;

        list<Opportunity> listOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity op = new Opportunity();
            op.Name = 'Test opp ' + i;
            op.StageName = 'Closed Won';
            op.CloseDate = date.today();
            if(i < 100 ){
                op.AccountId = listAcc[0].id;
            } else if (i < 200) {
                op.AccountId = listAcc[1].id;
            } else if (i < 300) {
                op.accountid = listAcc[2].id;
            }
            listOpps.add(op);
        }
        insert listOpps;

        Test.startTest();
        SoqlDemo.sampleSoql4();
        Test.stopTest();
    }

}
