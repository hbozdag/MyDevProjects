public class AccountQueueableExample implements Queueable {
   public List<Account> accList;
    public AccountQueueableExample(List<Account> accList) {
        this.accList=accList;

    }

    //mandatory method

    public void execute(QueueableContext context){
        for(Account acc:accList){
            //udpate the accoutn name
            acc.name=acc.Name+' SI';
        }
        update accList;
    }
}
