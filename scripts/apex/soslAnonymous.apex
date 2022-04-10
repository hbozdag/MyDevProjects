List<List<SObject>> searchList=[Find 'Salesforce' IN All fields
Returning Account(name), Contact(firstname, lastname, department)];

List<Account> searchAccounts= (account[])searchList[0];
System.debug('search account -'+ searchAccounts);

List<Contact> searchContacts= (Contact [])searchList[1];
System.debug('search contact -'+ searchContacts);

Find {Smith}
In all Fields 
returning Lead(name)