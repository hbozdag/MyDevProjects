OpportunityBatch op=new OpportunityBatch();
Id oppId=Database.executeBatch(op, 5);

SalesforceTicketBatch tb=new SalesforceTicketBatch();
Id ticketId=Database.executeBatch(tb, 5);


CleanUpOrg.deleteOrphanContacts();

CleanUpOrg.deleteOrphanOpportunities();


