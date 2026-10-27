public class MixedDMLOperationError {
    public void causeError(){
        Profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];
        UserRole r = [SELECT Id FROM UserRole LIMIT 1];

        User U4 = new User(
            FirstName         = 'Test',
            LastName          = 'MixedDML',
            Alias             = 'tmdml',
            Email             = 'test.mixeddml@example.com',
            Username          = 'test.mixeddml' + System.currentTimeMillis() + '@example.com',
            ProfileId         = p.Id,
            UserRoleId        = r.Id,
            TimeZoneSidKey    = 'Asia/Kolkata',
            LocaleSidKey      = 'en_IN',
            EmailEncodingKey  = 'UTF-8',
            LanguageLocaleKey = 'en_US'
        
        
        );
        Insert U4;
        createAccount();
        
      
    }
   
    @future
    public static Void createAccount()
    {
         Account C = new Account(
            Name = 'Mixed DML Test1'
         );
        insert C;
    }

}