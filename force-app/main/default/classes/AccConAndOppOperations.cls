public with sharing class AccConAndOppOperations {

    //1. Write the logic to fetch and retiurn all the accounts. Include account name, annual revenue, type and source of account.
    public static List<Account> allAccounts(){
        List<Account> acc=[Select name, annualrevenue, type, accountsource from Account];

       System.debug('all accounts: '+acc);
       return acc;
    }
  
    /*2.Prepare a method which will return the List of Accounts (At least 3 fields) for a particular
Type. Type should be sent as a parameter in the method.*/
public static List<Account> listAcc(string typeName){
    List<account> accList=[select id, name, type from account where type =:typeName];
    System.debug(accList);
    return accList;
}
/*3. Print all the opportunities (Amount, Name and Account Name) with Stage as 'Closed
Won' and make it dynamic so that it should work for other stages as well.*/
public static void printAllOpp(string stage){

    list<Opportunity> allOpps=[Select name, amount, account.name from Opportunity where StageName=:stage];
    system.debug(allOpps);
}
/*4. Find all the opportunities which has Lead Source as 'Web' and Stage
as 'Closed Lost'. Make it dynamic so that it works for other stages and Lead sources as well.*/

public static void allOpps(string lead, string stage){
    list<Opportunity> allOpps=[Select ID, LeadSource, StageName from Opportunity where leadsource=:lead and StageName=:stage];
    System.debug('All opps with lead source and stage: '+allOpps);
}

/*5. Prepare a method which returns the sum of all the opportunities Amount present in the
org.*/
public static void sumAllOpp(){

AggregateResult sumOpp= [Select sum(amount) from Opportunity ];
System.debug('sum of all Oppourtunities: '+sumOpp);
}

/*6. Write a method which should return the account instance after adding a new Account in
salesforce org. Take Name, AnnualRevenue, Type as parameters and populate the values in
account record. If Name is not provided, then do not create the account and show a
message like Account without name can not be created. */
public static Account newAccount(string accName, decimal accAnnualRevenue, string accType){

 Account newAcc=new Account();
 if(accName!=null){
 newAcc.Name=accName;
 newAcc.AnnualRevenue=accAnnualRevenue;
 newAcc.type=accType;

    insert newAcc;
 }else{
     system.debug('account without name cannot be provided');
 }

 return newAcc;
}

/*7. Take account Id as input parameter and create a new contact for the provided account’s
Id. Populate Contact last name as same as Account’s Name.*/
public static void newContact(ID accID){

  Account newAcc=[Select name from account where ID=:accID];

  Contact cont=new Contact();
  cont.LastName=newAcc.name;
  cont.AccountId=newAcc.Id;
  insert cont;

}
/*8. Update the description field of top 10 opportunities as "This is one of the top 10
opportunity.*/
public static void updateTop10(){

    List<Opportunity> top10=[Select amount, description from Opportunity ORDER BY amount desc limit 10];

    for(Opportunity eachOpp:top10){
        eachOpp.Description='This is one of the top 10 opportunity';
    }
    update top10;

}
/*9. Write a logic to create and return n number of opportunities for a particular accountId.
AccountId and n will be passed as parameters in the method. Populate opportunity close
date as as 3 years from today, Stage name as Prospecting, Opportunity amount as
Account’s annual revenue divided by n and Opportunity name same as Account name.
For Ex: if n=2, Then two new opportunities
If n=0, Print the message as “Please tell us how many opportunities needs to be created”*/

public static List<Opportunity> varOpp(Integer n, ID accID){
    List<Opportunity> newList= new List<Opportunity>();
Account acc=[Select Id,name, annualRevenue from account where ID=:accID];
if(n>0){

    for(integer i=0; i<=n; i++){
        Opportunity newOpp= new Opportunity();
        newOpp.CloseDate=date.today().addYears(3);
        newOpp.StageName='Prospecting';
        newOpp.Amount=acc.annualRevenue/n;
        newOpp.Name=acc.name+i;
        newList.add(newOpp);
    }
    insert newList;
    }else{
system.debug('please tell us how many opportunities need to be created');
    }

   return newList;
}
/*10. Delete all the opportunities which have amount less than 20000 and status as closed
lost. */
public static void deleteOpps(){
    List<Opportunity> listOpp=[Select amount from Opportunity where amount<20000 and stagename='Closed Lost'];

    delete listOpp;
    System.debug(listOpp);
}

/*11. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and
print the Opportunity Name and Amount for the respective 'Closed Won' opportunities.
Printing should be done one by one in different lines.*/
public static void printAcc(){

    List<account> acc=new List<Account>();
    acc=[Select annualRevenue, name, (Select name, amount from Opportunities where stageName='Closed Won') from account where type='Customer - Direct'];
   
    for(account accList:acc){
        system.debug('account name: '+accList.name);
        System.debug('annual revenue: '+accList.AnnualRevenue);
        List<Opportunity> listOpp=accList.Opportunities;

        for(Opportunity oppList:listOpp){
            System.debug('Opportunity name: '+oppList.Name);
            System.debug('Opportunity amount: '+oppList.Amount);
        }
    }
}
/*12. Find out all the Account which have no contacts attached to them. Add a contact for each
one of them and update the last Name of contact with the Name field of account*/

public static void allAcc(){
    List<Account> acc=[Select ID,Name from account where id not in  (Select accountID from contact) ];
List<Contact> listCont= new List<Contact>();
    for(Account upAcc:acc){
        Contact cont=new Contact();
        cont.LastName=upAcc.Name;
        cont.AccountId=upAcc.id;
        listCont.add(cont);

    }
    insert listCont;

    System.debug(acc);

}
/*13. Prepare a method which will return all the Accounts for which at least a contact is
present.*/

public static List<Account> contAvailable(){
    List<Account> acc=[Select ID,Name from account where id in  (Select accountID from contact) ];
    System.debug(acc);
    return acc;
}

/*14. Prepare a method which will return all the Accounts for which at least a closed Won
Opportunity is present. Make it dynamic if we want to bring account for other opportunity
stageNames.*/

public static List<Account> oppAvailable(string stage){
    List<Account> acc=[Select ID,Name from account where id in  (Select accountID from Opportunity where StageName=:stage) ];
    System.debug(acc);
    return acc;
}
/*15. Delete all the contacts which have no accounts attached to them.*/

public static void delAcc(){
    List<Contact> conts=[Select accountid, name from contact where AccountId=null ];
    System.debug(conts);
    delete conts;
}
}