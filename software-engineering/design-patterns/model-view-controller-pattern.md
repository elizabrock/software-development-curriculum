# Model View Controller Pattern (MVC)

## Overview
MVC, which stands for Model, View, Controller, is an architecture pattern for organizing software applications.
Each component manages a specific purpose, and serves to make your code more organized and modular.
In addition to defining the three components, MVC describes the actual relationship between the components.

## Model

The Model serves as the central component. It's responsible for talking to the database and represents your
applications business logic and data. In other words, your model should contain the code that you'd typically
find in an object oriented class. In Rails, your model can inherit from Active Record Base,
which would provide your model with methods for querying your database.

## View

Views are the presentation layer for the MVC pattern. The Rails default for views is ERB (Embedded Ruby).
ERB is nothing more than a way for writing Ruby code within your HTML. For those who've used Jade, it's very similiar.
Rails also provides helper functions that can be used in your view, and will be interpreted by the broswer as plain HTML.

## Controller
A controller does excatly what its name implies. It serves as the hub of your app, recieving and routing requests between routes,
models and views. In a typical request cycle, the controller starts off receiving a request, and routes that request
to the appropriate model. The model then talks to the database and sends data back to the controller.
Finally, the controller renders the originally request view with the approriate data.

## Further Reading

* [Hartl's Rails Tutorial - MVC] (http://www.railstutorial.org/book/beginning#sec-mvc)
* [Wikipedia] (http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

## Sources

* [RailsTutorial.org] (http://www.railstutorial.org)
* [Wikipedia] (http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)
