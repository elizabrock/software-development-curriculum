##What is AJAX?

####AJAX is an acronym standing for Asynchronous JavaScript and XML though it should be noted that XML is not a necessary component of this development technique.  A JSON data structure is a possible variant (AJAJ) and the calls are not required to be asynchronous.

####AJAX is not a technology, rather the interaction of a group of technologies (such as HTML and CSS) used in concert along with Javascript to access the DOM, while allowing the user to interact with data received from the web server. Using the AJAX technique allows websites to send and receive data in the background (perhaps through the XMLHttpRequest (XHR) API) without interfering with the data and behavior of the existing page.

####While not an native citizen the of the jQuery library, the AJAX technique functionality is simplified and expanded through the use of jQuery methods. The jQuery library provides a large set of methods to augment the technique. Common methods used are: $PUT, $GET, $POST and $DELETE

##CodeSamples:
```
         $.ajax({
             url: '/script.cgi',
             type: 'DELETE',
             success: function(result) {
                 // Do something with the result
             }
         });
```
The next example is taken from the Cohort10 Music-History project in which the AJAX method was utilized to retrieve song information from JSON files to populate the songlist in the DOM.
```
      querySongs: function(callback) {
           $.ajax({
             url: "./jsonFiles/songs2.json"
           }).done(function(data) {
             callback.call(this, data);
           });
         }
```
Lastly, this example illustrates the $ajax() method with the instructions for the browser to handle events in the case of success or failure of the data request.
```
  $.ajax(this.href, {
     success: function(data) {
        $('#main').html($(data).find('#main *'));
        $('#notification-bar').text('The page has been successfully loaded');
     },
     error: function() {
        $('#notification-bar').text('An error occurred');
     }
  });
```

##Resources:

http://www.seguetech.com/blog/2013/03/12/what-is-ajax-and-where-is-it-used-in-technology
   - A very good, comprehensive discussion of AJAX, its uses, applications and benefits

http://www.tutorialspoint.com/jquery/jquery-ajax.htm
   -Provides discussion of AJAX calls in general with code examples

http://api.jquery.com/jquery.ajax/
   - The jQuery API docs for the AJAX HTTP request.

http://jqfundamentals.com/chapter/ajax-deferreds
   - Further explanation of exactly WHAT and AJAX call is with more specific code examples
   - Includes information about promises/deferreds for further investigation in performing asynchronous requests.
     Note:  This site uses pseudo code for illustration purposes.  This code is documented as broken code.

http://www.sitepoint.com/use-jquerys-ajax-function/
   - This site breaks down the AJAX call and povides a comprehensive list of all the options to be passed in with the options parameter. Included a JS Fiddle live code example.

http://www.tutorialspoint.com/ajax/
   - A brief (and outdated) tutorial that explains AJAX when it was the state of the art.  The concepts are the same, however, the tools and methods have evolved.

http://www.wrox.com/WileyCDA/Section/What-is-Ajax-.id-303217.html
   - For those with interest in the history of the web development technique, this article from 2007 traces back to the origins of AJAX, its relationship to XML, and the beginnings of the XMLHttpRequest Object.