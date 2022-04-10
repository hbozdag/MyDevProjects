List<case> caseList=new List<case>();
caseList =[Select id, description from case];
for(case c:caseList){
    c.Description='Updated Descriptons';
}
update caseList;