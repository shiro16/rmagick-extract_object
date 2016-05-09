# Rmagick::ExtractObject

  Object detection from image. rmagick enhancement class.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rmagick-extract_object'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rmagick-extract_object

## Usage

```ruby
Magick::ExtractObject.configure do |config|
  config.slope_threshold = "10000000"
  config.mask_color = "red"
end

image = Magick::ExtractObject::Image.new("spec/fixtures/test.jpg")
image.edge.write("edge.jpg") # edge image
image.mask.write("mask.jpg") # mask image
image.transparent_background.write("transparent_background.png") # transparent background image
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rmagick-extract_object. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

