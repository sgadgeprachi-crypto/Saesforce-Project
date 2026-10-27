public class BookInsertBatch  implements Database.Batchable<Decimal>{
    
   
     public Iterable<Decimal>start(Database.BatchableContext BC)
     {
          List<Decimal> priceList= new List<Decimal>();
         
           for(integer i=1;i<500;i++)
           {
               
               priceList.add(10.00 + i);
           }
    
           return priceList;
     }
     public void execute(Database.BatchableContext bc , List<Decimal> scopeList)
     {
         List<Book__c> bookList = new List<Book__c>();
         
         for(Decimal price :scopeList)
         {
             Book__c newBook = new Book__c();
            newBook.Price__c = price;
           
            bookList.add(newBook);
         }
         if(!bookList.isEmpty())
         {
             insert bookList;
         }
     }
     public void finish(Database.BatchableContext bc)
     {
      }

}