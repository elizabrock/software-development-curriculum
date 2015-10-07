#AngularJS
Angular implements a MVC design pattern, which stands for Model View Controller.

###Model
Model is strictly data. It does NOT depend on the controller or the view.

###View
The view is an interface to view and modify the data.

###Controller
Controllers are operations that can be performed on the data.

###$scope
Scope is an object that refers to the application model. It is an execution context for expressions. Scopes are arranged in hierarchical structure which mimic the DOM structure of the application. Scopes can watch expressions and propagate events.

###Service
Use Service when you need just a simple object such as a Hash, for example {foo:1, bar:2} It's easy to code, but you cannot instantiate it. A service is an injectable constructor. If you want you can specify the dependencies that you need in the function. A service is a singleton and will only be created once by AngularJS. Services are a great way for communicating between controllers like sharing data.

```js
angular.module('app' ,[]);
 
.service('movie', function () {
  this.title = 'The Matrix';
});
 
.controller('MyController', function (movie) {
  expect(movie.title).toEqual('The Matrix');
});
```

###Filters

###Partials
