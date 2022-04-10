public with sharing class OpportunitySchedulable implements Schedulable {

    public void execute(SchedulableContext sc) {
        Database.executeBatch(new OpportunityBatch());

    }
}
