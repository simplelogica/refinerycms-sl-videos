# Videos extension for Refinery CMS.

## About

A page for videos from diferent sources, in a blog format with multilingual support, custom urls and seo.
Check supported video formats of [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable).

For RefineryCMS 2.0.0.

## Requirements

* [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable) gem (>= 1.0.0)

## TODO

* Fix SEO (seo data is stored but for some reason data is not in html head)
* Build the gem
* Documentation
* Tests

## Install

Add this line to your applications `Gemfile`

    gem 'refinerycms-sl-videos', '~> 2.0.0'

Next, run

    bundle install
    rails g refinery:videos
    rake db:migrate
    rake db:seed

## Thanks

To people from [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable), for the great video sources support.

## How to build this extension as a gem

    gem build refinerycms-sl-videos.gemspec
    gem install refinerycms-sl-videos.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-sl-videos.gem
