#HTML with DOM and Forms

##DOM

The Document Object Model (DOM) is a programming interface for HTML, XML and SVG documents. It provides a structured representation of the document (a tree) and it defines a way that the structure can be accessed from programs so that they can change the document structure, style and content. The DOM provides a representation of the document as a structured group of nodes and objects that have properties and methods. Nodes can also have event handlers attached to them, and once that event is triggered the event handlers get executed. Essentially, it connects web pages to scripts or programming languages.

Though often accessed using JavaScript, the DOM itself is not a part of the JavaScript language, and it can be accessed by other languages, though this is much less common.

##Basic HTML Starter Template

```
  <!doctype html>

  <html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Nashville Software School</title>
    <link rel="stylesheet" href="stylesheet.css" type="type/css">
  </head>

  <body>
    <nav></nav>

    <header></header>
    
    <article>
      <header></header>
      <section></section>
      <footer></footer>
    </article>

    <footer></footer>
  <script src="javascript.js"></script>
  </body>
  </html>
```

##Forms

HTML Forms are one of the main points of interaction between a user and a web site or application. They allow users to send data to the web site. Most of the time that data is sent to the web server, but the web page can also intercept it to use it on its own.

##Resources

#####DOM

* [HTML element reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
* [How to Use The HTML5 Sectioning Elements](http://blog.teamtreehouse.com/use-html5-sectioning-elements)

#####Form

* [List of Form Elements](http://www.w3schools.com/html/html_forms.asp)
* [How to structure an HTML Form](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/How_to_structure_an_HTML_form)