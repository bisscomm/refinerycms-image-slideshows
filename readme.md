# Refinery CMS Image Slideshows

[![Build Status](https://travis-ci.org/refinerycms-contrib/refinerycms-image-slideshows.svg?branch=master)](https://travis-ci.org/refinerycms-contrib/refinerycms-image-slideshows) [![Code Climate](https://codeclimate.com/github/refinerycms-contrib/refinerycms-image-slideshows/badges/gpa.svg)](https://codeclimate.com/github/refinerycms-contrib/refinerycms-image-slideshows) [![Test Coverage](https://codeclimate.com/github/refinerycms-contrib/refinerycms-image-slideshows/badges/coverage.svg)](https://codeclimate.com/github/refinerycms-contrib/refinerycms-image-slideshows/coverage)

Image Slideshows engine for [Refinery CMS](https://www.refinerycms.com) allows you to display multiple slideshows.

### In summary you can:
* Manage slideshows (title, draft)
* Manage i18n slides in every slideshow (title, image, caption, body, link_url, draft)

## Requirements

* [Refinery CMS](https://www.refinerycms.com) version 4.0.0 or above.

## Install

Open up your ``Gemfile`` and add at the bottom this line:

```ruby
gem 'refinerycms-image_slideshows', git: 'https://github.com/refinerycms-contrib/refinerycms-image-slideshows', branch: 'master'
```

Now, run ``bundle install``

Next, to install the products plugin run:

    rails generate refinery:image_slideshows

Run database migrations:

    rake db:migrate

Finally seed your database and you're done.

    rake db:seed

## Usage

Add this code in your HTML) :

```html+erb
  <body>
    <% main_slideshow = Refinery::ImageSlideshows::ImageSlideshow.slideshow_by_title('Your Awesome Slideshow Title') %>
    <div id="wrapper">
      <div class="slider-wrapper">
        <div id="slider">
          <% main_slideshow.image_slides.each do |image_slide| %>
            <%= link_to image_slide.link_url do %>
              <%= image_tag image_slide.image.url, :alt => image_slide.title, :title => image_slide.caption %>
            <% end %>
          <% end %>
        </div>
      </div>
    </div>
  </body>
```

## Developing & Contributing

The version of Refinery to develop this engine against is defined in the gemspec. To override the version of refinery to develop against, edit the project Gemfile to point to a local path containing a clone of refinerycms.

### Testing

Generate the dummy application to test against

    $ bundle exec rake refinery:testing:dummy_app

Run the test suite with [Guard](https://github.com/guard/guard)

    $ bundle exec guard start

Or just with rake spec

    $ bundle exec rake spec


## More Information
* Check out our [Website](https://www.refinerycms.com/)
* Documentation is available in the [guides](http://refinerycms.com/guides)
