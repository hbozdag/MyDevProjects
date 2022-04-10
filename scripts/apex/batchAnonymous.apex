AccountsBatch ab= new AccountsBatch();
Id bacthId=Database.executeBatch(ab, 10);

System.debug('bathc id= '+bacthId);