# RailsLogPrefix

It just adds your custom message or image in console when running rails commands. For example:

    $rails s
    
    
    ░░░░██▄
    ░░░██▀░░░░▐
    ▌░███▄░░░░▐
    ▌▐███░▀▄███▄▄▄██▄▄
    ▌█████▌░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌░░░▌░█▄░▌░░░░░░▌

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_log_prefix'
```

And then execute:

    $ bundle install

Add this line at the end of file `config/boot` in your application:

```ruby
require 'rails_log_prefix'
```

Feel free to change value of `DEFAULT_CUSTOM_MESSAGE` in `lib/rails_log_prefix` to your needs and fun.

## Usage

Just run your server or console as usual:

    $ rails server
or

    $ rails console
    
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_log_prefix. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

