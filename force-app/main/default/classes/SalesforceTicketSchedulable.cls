public with sharing class SalesforceTicketSchedulable implements Schedulable{
    public void execute(SchedulableContext sc) {
        Database.executeBatch(new SalesforceTicketBatch());

    }
}
