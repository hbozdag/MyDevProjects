try{
Account ac=new Account();
insert ac;
}catch(DmlException dex){
    System.debug('dml went wrong'); //only 5 an 11 will execute

}catch(Exception Ex){
    system.debug('something went wrong buddy.');
}

System.debug('apex is simple');

