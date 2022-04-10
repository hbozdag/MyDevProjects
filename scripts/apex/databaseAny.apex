        account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';
        acc1.VIP__c = false;

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        //required field is missing
        Account acc12x=new account();
        Account acc12y=new account();

        List<account> listAcc=new list<account> {acc1, acc2, acc12x, acc12y};

        list<Database.SaveResult> results=Database.insert(listAcc, false);

        //iterate save result

        for(Database.SaveResult eachResult: results){
            if(eachResult.isSuccess()){
                System.debug('Account successfully inserted, account id is: '+eachResult.getId());
            }else{
                //error here
                //List<database.error errors=eachResult.getErrors();
                

                System.debug('errors: '+eachResult.getErrors());
            }
        }