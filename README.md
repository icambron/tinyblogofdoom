#This blog is tiny#

Tinyblogofdoom is a very small blog. Not a blog engine, but an actual blog. I've written it as a demostration of how to use [Spandex](http://github.com/icambron/spandex), a simple engine for rendering pages.

##Features##

 - Web pages served with [Sinatra](http://www.sinatrarb.com/). See `app.rb`.
 - Posts/pages found and rendered with [Spandex](http://github.com/icambron/spandex).
   - Post bodies can be in Markup, Textile, or anything else [Tilt](http://github.com/rtomayko/tilt) supports.
   - Customize rendering by customizing Tilt. To learn more, look at the docs on [Spandex](http://github.com/icambron/spandex)
 - Atom feed rendred by Spandex.
 - Content is just files. Add them to `/content` and you're all set.
 - HTML chrome using [Haml](http://haml-lang.com/). See the `/views` directory.
 - CSS using [Sass](http://sass-lang.com/).
 - Deploy to Heroku. Just commit and push
 - Tinyblog can be run locally with `shotgun config.ru`
 - Comments using [Disqus](http://disqus.com/). Just set the environment variable DISQUS_NAME to your username.

##How to use##

 1. Get the code: `git clone git@github.com:icambron/tinyblogofdoom.git`
 2. Make you have some basics: `gem install shotgun bundler`
 3. Install the dependencies: `bundle install`
 4. Launch it: `foreman start`
