# Grunt

http://gruntjs.com

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
    watch: {
      javascripts: {
        files: ['./javascripts/**/*.js'],
        tasks: ['jshint']
      },
		  }
  });

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
  grunt.registerTask('default', ['jshint', 'watch']);
};

```

What we've configured is one task, jshint, for Grunt to run. To run Grunt and execute that task, just run the grunt command in your CLI.

#### Create a package.json file in your project directory

Next, open the package.json file and include the following code:

```
{
  "name": "modules",
  "version": "0.1.0",
  "devDependencies": {
    "grunt": "~0.4.5",
    "grunt-contrib-jshint": "^0.11.2",
    "grunt-contrib-nodeunit": "~0.4.1",
    "grunt-contrib-uglify": "~0.5.0",
    "grunt-contrib-watch": "^0.6.1",
    "matchdep": "^0.3.0"
  }
}
```

To install the required dependencies run ``npm install``.


A few of the many Grunt plugins can be found at https://github.com/nashville-software-school/front-end-curriculum/tree/master/43-compile-grunt. For the full list of plugins visit http://gruntjs.com/plugins.

### Additional Resources

https://nodejs.org/en | http://gruntjs.com
