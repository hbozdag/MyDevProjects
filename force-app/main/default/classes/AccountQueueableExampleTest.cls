@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void  makeDate(){
        List<Account> accounts=new List<account>();
        for(integer i=0; i<100; i++){
            accounts.add(
                new account (name='Test Account'+i)
            );
        }
        insert accounts; 
    }
    @isTest
    private static void testQueueable() {
        List<account> accounts=[select id, name from account where name like 'Test Account%'];
        AccountQueueableExample acq=new AccountQueueableExample(accounts);

        Test.startTest();
        System.enqueueJob(acq);
        Test.stopTest();

        //asserrt
        Integer count=[select count() from Account where name like '%SI'];
        System.assertEquals(100, count);
    }
}
