trigger AccountTrigger2 on Account (before update) {
 //system.debug('before update trigger.');

 /*This is not possible. record cannot be inserted and updated at the same time
 if(trigger.isInsert && trigger.isUpdate){
    System.debug('Debug for Insert and Update');
 }*/

 

}