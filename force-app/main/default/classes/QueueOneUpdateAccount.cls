public class QueueOneUpdateAccount implements Queueable {
    public static void execute(QueueableContext Context){
        list<Account> AccList = [select id, Account_Price__c from Account where Account_Price__c = Null];
        if(AccList!=Null)
        {
            for(Account acc:AccList)
            {
                 acc.Account_Price__c= 20000;
            }
           update AccList;
        }
        
        System.enqueueJob(new QueueTwoCreateStudent());
    }

}