public with sharing class PracticeSOQL {
    public static void firstPractice() {

        List<Salesforce_project__c> myList=[SELECT ID, lastmodifieddate, project_name__c from salesforce_project__c where project_name__c LIKE '%A%'];

        system.debug('My list with all project names that have the letter A '+myList);

    }

    public static void secondPractice(){

        List<account> myList=[SELECT ID, name, createddate from account ORDER by createddate desc LIMIT 5];

        for(account eachAcc:myList){
        ID accID=eachAcc.ID;    
        string accName=eachAcc.name;
        Datetime accdate=eachAcc.createddate;


        System.DEBUG('Name of the account is '+accName+', and it was created on '+accdate+ ' RECORD ID is '+accID);
    }
}

  public static void thirdPractice(){
      List<salesforce_ticket__c> myList=[SELECT ID, salesforce_project__r.project_name__c, completed_date__c 
       from salesforce_ticket__c order by completed_date__c LIMIT 5];

        for (salesforce_ticket__c eachTicket : myList) {
         ID ticketID=eachTicket.ID;
         string ticketPrName=eachTicket.salesforce_project__r.project_name__c;
         date ticketDate=eachTicket.completed_date__c;

         system.debug('Ticket ID is '+ ticketID+', project name is '+ticketPrName+', and ticket date is '+ticketDate);
                                              
}
  }

  public static void fourthPractice(){
      List<salesforce_ticket__c> myList= [SELECT ID, priority__c, subject__c from salesforce_ticket__c where subject__c like '%pro%'];

      system.debug('my list is '+myList);
  }

  public static void fifthPractice(){
      salesforce_ticket__c myList=[SELECT ID, salesforce_project__r.project_name__c 
      from salesforce_ticket__c where salesforce_project__r.project_name__c='Shoe Less' ORDER BY id LIMIT 1];

      system.debug(myList.salesforce_project__r.project_name__c);
  }

  public static void sixthPractice(){

    string myVar='sForce';
    //use colon : when variable is referred
    List<Account> myList=[SELECT ID, NAME from account where name =:myVar];

    System.debug(myList);
  }

  public static void seventhPractice(String accName){
      List<account> myList=[SELECT ID, NAME from account where name =:accName];

      system.debug('you have entered: '+accName+' and here is the result '+myList);

  }

  public static void eightPractice(){
      //this is parent to child

      List<salesforce_project__c> myList=[SELECT ID,name, Project_name__c, (SELECT name FROM salesforce_tickets__r) FROM salesforce_project__c];

      System.debug(myList);
  }

  
}
