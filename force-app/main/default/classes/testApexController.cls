public class testApexController {
      public void getUserData(Integer delayInMs) {
          try {
              // Create a new HTTP request
              HttpRequest req = new HttpRequest();
              req.setEndpoint('https://mockanapi.com/s/67ef012e5d076e0414572271/user?mock_delay=' + delayInMs);
              req.setMethod('GET');
  
              // Create an HTTP object to send the request
              Http http = new Http();
              // Send the request and receive the response
              HttpResponse res = http.send(req);
  
              // Handle the response
              if (res.getStatusCode() == 200) {
                  // Process the response, e.g., parse the JSON response
                  String responseBody = res.getBody();
                  System.debug('Response: ' + responseBody);
              } else {
                  System.debug('Error: ' + res.getStatus());
              }
          } catch (Exception e) {
              System.debug('Exception: ' + e.getMessage());
          }
      }
}