Sinatra Template
================

A bare-bones Sinatra application to make getting started a little less painful.

This template is opinionated enough to include:

* [SASS](http://sass-lang.com/) for better CSS;
* [HAML](http://haml.info/) for better HTML;
* [CoffeeScript](http://coffeescript.org/) for better JavaScript;
* [Sinatra AssetPack](http://ricostacruz.com/sinatra-assetpack/) for managing SCSS and CoffeeScript files; and
* [jQuery](http://jquery.com/) & [normalize.css](http://necolas.github.com/normalize.css/) because everyone loves 'em.

Usage
-----

Grab the latest version from GitHub, install the gems, and start the server.

```bash
$ git clone git://github.com/alexpearce/sinatra-template.git
$ cd sinatra-template
$ bundle install --path=vendor/prefix
$ shotgun
== Shotgun/WEBrick on http://127.0.0.1:9393/
```

[Open it up](http://127.0.0.1:9393/).

To add stylesheets and javascripts, place them in `app/stylesheets` and `app/javascripts`, respectively. Libraries can go in the `lib` subdirectory of each of these.

Requirements
------------

If you're one of these trendy web developer types, you'll no doubt have [Node.js](http://nodejs.org/) and [CoffeeScript](http://coffeescript.org/) installed already. If not, [install Node] and then [install CoffeeScript](http://coffeescript.org/#installation).

Customisation
-------------

To change the application name, change the instances of `Application` in `config.ru` and `application.rb` to `YourApplicationName`.

It'd be good to stick a favicon inside `public`.
