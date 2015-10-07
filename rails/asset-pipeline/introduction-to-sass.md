Sass
============
Sass (Syntactically Awesome Stylesheets) designed by Hampton Catlin and developed by Nathan Weizenbaum.

Sass is a preprocessor that lets you use features that don't exist in CSS. Features like variables, nesting, mixins, inheritance and plenty others that make writing CSS fun again. Sass will take your preprocessed Sass file and save it out as a normal CSS file that you can use in your web site.

Basic Install
============
1. Open your Terminal or Command Prompt.

2. Install Sass. Ruby uses Gems to manage its various packages of code like Sass. In your open terminal window type:

 `$ gem install sass`

 This will install Sass and any dependencies that you need. If you get an error message then it's likely you will need to use the sudo command to install the Sass gem. It would look like:
 
 `$ sudo gem install sass`

3. Double-check. You should now have Sass installed. In your terminal application you can type:

 `$ sass -v`
 
 It should return Sass 3.3.8 (Maptastic Maple). Congratulations! You've successfully installed Sass.

Varaibles
============
Variables are a way to store information that you want to reuse throughout your stylesheet. You can store things like colors, font stacks, or any CSS value you think you'll want to reuse. Sass uses the `$` symbol to make something a variable.

example: 
          
          $font-stack:    Helvetica, sans-serif
          $primary-color: #333
          
          body
            font: 100% $font-stack
            color: $primary-color
            
            
Sass takes the variables we define for the $font-stack and $primary-color and puts normal CSS with our variable values placed in the CSS.

Nesting
============
Sass will let you nest your CSS selectors in a way that is similiar to the HTML/Jade visual hierarchy.

example:

          nav 
            ul
              margin: 0
              padding: 0
              list-style: none
          
            li
              display: inline-block
          
            a
              display: block
              padding: 6px 12px
              text-decoration: none
              
In the example you can see how the `ul`, `li`, and `a` selectors are all nested inside of the `nav` selector. This is a awesome way to organize your CSS.

Sass is awesome!

Sources
============

  * http://sass-lang.com/guide
  * http://en.wikipedia.org/wiki/Sass_(stylesheet_language)
