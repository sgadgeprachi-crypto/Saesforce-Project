public  class testRestApiCallout implements Queueable, Database.AllowsCallouts {
   public void execute(QueueableContext ctx) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://jsonplaceholder.typicode.com/users');
        req.setMethod('GET');
        HttpResponse res = new Http().send(req);
        System.debug('Status: ' + res.getStatusCode());
        System.debug('Body: ' + res.getBody());
    }
}