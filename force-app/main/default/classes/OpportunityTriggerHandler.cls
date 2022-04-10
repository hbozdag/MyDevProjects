public with sharing class OpportunityTriggerHandler {
    public static void updateStageOpp(list<Opportunity> oppTriggerNew,
    list<Opportunity> oppTriggerOld,
    map<id, Opportunity> oppTriggerNewMap,
    map<id, Opportunity> oppTriggerOldMap) {
        for(Opportunity opp :oppTriggerNew ){
            if(opp.StageName == 'Closed Lost' || opp.StageName == 'Closed Won'){
                opp.CloseDate=date.today();
            }
            else {
            opp.CloseDate = date.today().addDays(15);
            }
        }
    }
}
