public class QueueThreeCreateCourse implements Queueable{
    public static void execute(QueueableContext Context)
    {
        Courses__c C1 = new Courses__c();
        C1.Course_Name__c = 'Salesforce';
        C1.Course_Price__c = 15000;
        
        Courses__c C2 = new Courses__c();
        C2.Course_Name__c = 'Java';
        C2.Course_Price__c = 20000;
        
        Courses__c C3 = new Courses__c();
        C3.Course_Name__c = 'C#';
        C3.Course_Price__c = 30000;
        
        List<Courses__c> courseList = new List<Courses__c>();
        courseList.add(C1);
        courseList.add(C2);
        courseList.add(C3);
        
        insert courseList;
       
    }

}