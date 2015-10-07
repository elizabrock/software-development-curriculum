#AngularJS
Angular implements a MVC design pattern, which stands for Model View Controller.

###Model
Model is strictly data. It does NOT depend on the controller or the view.

###View
The view is an interface to view and modify the data.

###Controller
Controllers are operations that can be performed on the data.<br>

In Angular, a Controller is defined by a JavaScript constructor function that is used to augment the Angular Scope.
When a Controller is attached to the DOM via the ng-controller directive, Angular will instantiate a new Controller object, using the specified Controller's constructor function. A new child scope will be created and made available as an injectable parameter to the Controller's constructor function as $scope.

###Directives
Directives in AngularJS are used to make custom HTML elements and simplify DOM manipulation. They can modify the behavior of new and existing DOM elements, by adding custom functionality, like a datepicker or an autocomplete widget. AngularJS comes with its own set of built-in directives, as well as the ability to add your own ones.
#####More information on directives:
http://www.befundoo.com/university/tutorials/angularjs-directives-tutorial/

###$scope
Scope is an object that refers to the application model. It is an execution context for expressions. Scopes are arranged in hierarchical structure which mimic the DOM structure of the application. Scopes can watch expressions and propagate events.
#####example:
```$scope.firstName = "John";
    $scope.lastName = "Doe";```

###Services
Use a service when you need just a simple object such as a Hash, for example {foo:1, bar:2} It's easy to code, but you cannot instantiate it. A service is an injectable constructor. If you want you can specify the dependencies that you need in the function. A service is a singleton and will only be created once by AngularJS. Services are a great way for communicating between controllers like sharing data.

```js
angular.module('app' ,[]);
 
.service('movie', function () {
  this.title = 'The Matrix';
});
 
.controller('MyController', function (movie) {
  expect(movie.title).toEqual('The Matrix');
});
```

####Factories

A factory is a service that can be injected as a function. A factory is a lot like a service in the sense that it is a singleton and dependencies can be specified in the function. The difference between a factory and a service is that a factory injects a plain function so AngularJS will call the function and a service injects a constructor. A constructor creates a new object so new is called on a service and with a factory you can let the function return anything you want. As you will see later on, a factory is a provider with only a $get method.

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

### Filters

A filter formats the value of an expression for display to the user. They can be used in view templates, controllers or services and it is easy to define your own filter.
#####example:

```html
<input type="text" ng-model="searchText" />
```

Now we add the `filter` condition to our `ng-repeat` helper. Since we used `ng-model` above to create a two-way binding on the `searchText` variable, Angular will automatically match your search string against **any** key in the Todo 

```html
<div>
  <ul ng-repeat="todo in todos | filter: searchText">
    <li>{{todo.name}}</li>
  </ul>
</div>
```

### Partials
Partials are a way to link the view (html) to the model and controller using two-way data-binding.
####Two-way data-binding just means that:
1. When properties in the model get updated, so does the UI.
2. When UI elements get updated, the changes get propagated back to the model.


##Sources
* https://docs.angularjs.org/api?PHPSESSID=cae8e98e7ca559b4605d75c813b358ee
* http://www.tomdalling.com/blog/software-design/model-view-controller-explained/
* https://thinkster.io/a-better-way-to-learn-angularjs
* https://github.com/johnpapa/angular-styleguide
