H2O template markup
========================
Being a martial art fan, I burrow a quote.

>Empty your mind, be formless. Shapeless, like water. If you put water into a cup, it becomes the cup. You put water into a bottle and it becomes the bottle. You put it in a teapot it becomes the teapot. Now, water can flow or it can crash. **Be water my friend**. -- Bruce Lee
 
H2o template
------------------------
H2O is markup language for Ruby :) that taken a lot of inspiration from django.

 * Readable and human friendly syntax.
 * Easy to use and maintain
 * Encourage reuse in templates by template inclusion and inheritance.
 * highly extensible through filters, tags and template extensions.
 * ruby 1.9 compatible
 
 
 Install
 
 `gem install speedmax-h2o --source=http://gems.github.com`

 as Rails Gem dependencies

 `config.gem 'speedmax-h2o', :lib => 'h2o', :source=> 'http://gems.github.com'`

 as Rails Plugin

 `script/plugin install git://github.com/speedmax/h2o.git`

 With Git

 `git clone http://github.com/speedmax/h2o.git`
 
 Download

 [<img src="http://github.com/images/modules/download/zip.png">](http://github.com/speedmax/h2o/zipball/master)


Quick start
-----------------------

Your ruby script

    require 'h2o'
    person = { :name => 'taylor luk', :age => 27 }
    puts H2o::template.parse('{{ person.name }}').render(:person => person)


Documentation
------------------------

Currently ruby version is still work in progress, please refer to h2o-php's [documentation](http://wiki.github.com/speedmax/h2o-php)