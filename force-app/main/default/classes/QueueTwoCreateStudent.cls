public class QueueTwoCreateStudent implements Queueable{
    public static void execute(QueueableContext Context)
    {
        //insert student
        Student__c S1 = new Student__C();
        S1.Name__c ='Student 1';
        S1.Contact_No__c ='87678346986';
        
        Student__c S2 = new Student__C();
        S2.Name__c ='Student 2';
        S2.Contact_No__c ='8767834600';
        
        Student__c S3 = new Student__C();
        S3.Name__c ='Student 3';
        S3.Contact_No__c ='87678346001';
        
        Student__c S4 = new Student__C();
        S4.Name__c ='Student 4';
        S4.Contact_No__c ='87678346002';
        
       List<Student__c> Sc = new List<Student__c>();

        Sc.add(S1);
        Sc.add(S2);
        Sc.add(S3);
        Sc.add(S4);
        
        insert Sc;
         System.enqueueJob(new QueueThreeCreateCourse());
        
    }

}