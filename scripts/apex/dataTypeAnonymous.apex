string batchName= 'Falcons 4';
integer totalCandidates=40;
boolean isAdminCompleted=true;

system.debug(batchName);
system.debug(totalCandidates);
system.debug(isAdminCompleted);

string batchDescription= batchName + ' are the best';
system.debug(batchDescription);

decimal decValue = 27.01;
system.debug('Decimal: '+decValue);

long longValue= 2147585858L;
system.debug('Long : '+longValue);


Object obj= 'This is a string';
Object obj2=10;

//this is a salesforce ID
ID id1='0015f00000DQCqPAAX';

system.debug ('Dickersons SF ID is ' + id1);
system.debug(obj);
system.debug(obj2);
