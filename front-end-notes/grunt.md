# Grunt

### What is Grunt?

GruntJS is a JavaScript based command line build tool that helps developers automate repetitive tasks. It performs tasks like minification, compilation, unit testing, linting, etc. As more and more development moves towards the client side, it makes a lot of sense to use tools that help developers be more productive.

### GruntJS Prerequisites

GruntJS requires NodeJS version 0.8.0 or above. You will need to use the npm package manager to install GruntJS and its plugins. Newer versions of NodeJS have the NPM package manager as part of the default distribution. Download the latest version of NodeJS from the website https://nodejs.org/en/.

### Install Grunt

On your command line type: ``npm install -g grunt-cli``

#### Create a Gruntfile.js in your project directory

Next, open Gruntfile.js and put in the following code:

If your .js files are in a directory other than javascripts be sure to replace the javascripts in grunt.initConfig with the name of your directory.
```
module.exports = function(grunt) {

 grunt.initConfig({
   jshint: {
     files: ['./javascripts/**/*.js']
   },
 });

 require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
 grunt.registerTask('default', ['jshint', 'watch']);
};
```

What we've configured is one task, jshint, for Grunt to run. To run Grunt and execute that task, just run the grunt command in your CLI.

### Additional Resources

https://nodejs.org/en/    |    http://gruntjs.com/
