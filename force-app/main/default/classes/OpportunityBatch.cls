public with sharing class OpportunityBatch implements Database.Batchable<sObject>{


   public Database.QueryLocator start (Database.BatchableContext ob){
       Database.QueryLocator queryL= Database.getQueryLocator([Select ownerId, lastModifiedDate from Opportunity where LastModifieddate!=last_n_days:3]);
       return queryL;
   }

   public void execute(Database.BatchableContext oq, List<Opportunity> oppList){
    List<Task> newTask=new List<Task>();
       for(Opportunity eachTask:oppList){
          Task taskOne=new Task();

           taskOne.OwnerId=eachTask.OwnerId;
           taskOne.Subject='Notification to act';
           taskOne.WhatId=eachTask.id; 
           newTask.add(taskOne);      
           
       }
       if(!newTask.isEmpty()){
       insert newTask;
       }
   }
   public void finish(Database.BatchableContext fp){
       System.debug('New task should be created');
   }

}
