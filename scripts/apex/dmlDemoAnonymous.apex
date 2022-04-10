Account acc=new account();

    //2. set fields
    acc.Name='test version v.22';
    acc.Website='www.softinnovas.com';
    acc.Active__c='Yes';

    //3. DML 
    insert acc;


    account acc=[select id, name from account where name='SoftInnovas Incorporation.' LIMIT 1];
    acc.name='SoftInnovas Ltd Incorporation.';
    update acc;

   Contact cnt=[Select lastname from Contact where name='Costanza' limit 1];
   cnt.lastname='Kramer';
   update cnt;

list<account> acc2 = [select id, name from account 
order by createdDate desc limit 5];
for(account a: acc2){
    a.Website =' www.triggeriseasy?.com';
}
update acc2;


List<case> newCases = new list<case>();
for(integer i = 0; i< 2; i++){
    //if I put 205 instead of 2, it will execute 2 times
    //trigger executes in batches of 200 records
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it.';
    c.Status = 'New';
    c.Origin = 'Web';
    newCases.add(c);
}
insert newCases;

DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlUpdateDemo_2();
DmlDemo.dmlUpdateDemo_2_CO();
DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlMultipleRecordUpdate_right();
DmlDemo.deleteEverything();



