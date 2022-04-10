







Case cases=new Case();
cases.Description='Here is the 7th description';

insert cases;

Case listCase=new Case();
listCase=[Select description, casenumber from Case order by casenumber desc limit 1];
system.debug('here is the original record: '+listCase);
listCase.description='This is the last but not final description';

update listcase;

Case listCase=new Case();
List<Case> typeCase=[Select type, casenumber from Case order by casenumber];
system.debug('here is the original record: '+typeCase);
for(case allCases:typeCase){
allCases.type='Mechanical';
}
system.debug('here is the final record: '+typeCase);
update typeCase;

List<Case> allCases=new LIst<Case>();
for(integer i=1; i<225; i++){
Case newCases=new Case(); 
newCases.type= 'Electrical';
allCases.add(newCases);
}
insert allCases;


List<Case> delCases=[Select casenumber, type from case where type='Electrical' or type='Structural'];
delete delCases;