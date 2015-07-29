# IEHeaders

Rack middleware that adds a response header that keeps Internet Explorer from running in compatability mode

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ie_headers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ie_headers

## Usage

IEHeaders can be added to your application in the way you would add any other piece of rack middleware to the middleware stack for your application.

In a Rails app, add the following to the Rails::Initializer.run block in your enviorment.rb file
```ruby
Rails::Initializer.run do |config|
  config.middleware.use IEHeaders::IEHeaders
end
```
In any other rake application you must add it to your Rack::Builder block in config.ru via the 'use' command like the following:

```ruby
@app = Rack::Buildeer do
  use IEHeaders::IEHeaders
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ie_headers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
