# SASS 
#### Syntactically Aweseome Style Sheets
SASS is a tool used to write CSS using programming concepts that don't regularly exist in CSS such as varaibles, nesting, mixins & extension.

### <a href="http://sass-lang.com/guide#topic-2" target="_blank">Variables</a>
* Useful for CSS statements you want to reuse throughout a project
* Eliminates duplication of code

### <a href="http://sass-lang.com/guide#topic-3" target="_blank">Nesting</a>
* Allows you to nest CSS statements within each other so that the rules are applied hierarchically
* Visually reflects HTML tag ordering with CSS
* Eliminates long chains of selectors to specify targets within the CSS

### <a href="http://sass-lang.com/guide#topic-6" target="_blank">Mixins</a>
* Think JavaScript function within CSS
* Can pass in a value and recieve the output of its constituant tags
* Very useful for those giant blocks of browser-specific code needed for the newer CSS3 flashy bits

### <a href="http://sass-lang.com/guide#topic-7" target="_blank">Extension/Inheritance</a>
* Inject the CSS rules from any selector into any other selector
* Reduces chaining of selectors in CSS rules
* Reduces needing to apply multiple classes to a single DOM element to get the desired formatting

## Usage
SASS was installed via node/npm with the _grunt-contrib-sass_ line in _package.json_

With SASS installed, instead of writing vanilla CSS, you can write SCSS which is then compiled into CSS via this _sass_ task in grunt:
```
sass: {
  dist: {
    files: {
      "../styles/main.css": "../sass/main.scss"
    }
  }
}
```
For our use, this _sass_ task was also included in the _watch_ tasklist so that it would run automatically upon saving changes to the SCSS, generating the CSS file.