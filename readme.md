# Videos extension for Refinery CMS.

## About

A page for videos from diferent sources, in a blog format with multilingual support, custom urls and seo.
Check supported video formats of [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable).

## Requirements

* [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable) gem (>= 1.0.0)

## TODO

* Build the gem
* Documentation
* Tests

## Install

Add this line to your applications `Gemfile`

    gem 'refinerycms-sl-videos', :git => 'https://github.com/simplelogica/refinerycms-sl-videos'

Next, run

    bundle install
    rails g refinery:videos
    rake db:migrate

## Thanks

To people from [acts\_as\_unvlogable](https://github.com/mamuso/acts_as_unvlogable), for the great video sources support.

## How to build this extension as a gem

    cd vendor/extensions/videos
    gem build refinerycms-sl-videos.gemspec
    gem install refinerycms-sl-videos.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-sl-videos.gem
