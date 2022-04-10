List<Account> accList= [Select id, name from account];

Id JOBiD=System.enqueueJob(new AccountQueueableExample(accList));
System.debug(JOBiD);