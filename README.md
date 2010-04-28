# Super simple config file Rails Template

Creates an app.yml file and an initializer to load its content. That easy.

When applied will ask you for the config file name, you can change it or leave the default (app).

The config file name must be alphanumeric with underscores. If an invalid file name is chosen, the default will be used.

## Installation

In a brand new Rails app:

    rails <app> -m http://github.com/jrom/rails-app.yml/raw/master/rails-app.yml.rb

In a existent Rails app:

    rake rails:template LOCATION=http://github.com/jrom/rails-app.yml/raw/master/rails-app.yml.rb
