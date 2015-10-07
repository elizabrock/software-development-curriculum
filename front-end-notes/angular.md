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
+```$scope.firstName = "John";
    $scope.lastName = "Doe";```

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

###Factory

A factory is an injectable function. A factory is a lot like a service in the sense that it is a singleton and dependencies can be specified in the function. The difference between a factory and a service is that a factory injects a plain function so AngularJS will call the function and a service injects a constructor. A constructor creates a new object so new is called on a service and with a factory you can let the function return anything you want. As you will see later on, a factory is a provider with only a $get method.

```js
angular.module('app', []);
 
.factory('movie', function () {
  return {
    title: 'The Matrix';
  }
});
 
.controller('MyController', function (movie) {
  expect(movie.title).toEqual('The Matrix');
});
```

```js
.factory('catalogueService', function($rootScope, $http) {
  // We first define a private API for our service.

  // Private vars.
  var items = [];

  // Private methods.
  function add( id ) {
    $http.put( $rootScope.apiURL, {id:id} )
    .success(function(data,status,headers,config) { items.push(data); })
    .then(function(response) { console.log(response.data); });
  }

  function store( obj ) {
    // do stuff
  }

  function remove( obj ) {
    // do stuff
  }

  // We now return a public API for our service.
  return {
    add: add,
    store: store,
    rm: remove
  };
};
```
