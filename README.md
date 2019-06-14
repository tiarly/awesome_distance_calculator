# AwesomeDistanceCalculator
[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

AwesomeDistanceCalculator gem, as its name indicates, it severs the purpose of calculating the distance between two given positions using the haversin formula.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'awesome_distance_calculator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install awesome_distance_calculator

## Usage

You could either use in you terminal for easy calculations by:

```shell
$ ./bin/console
```
and then:
```ruby
AwesomeDistanceCalculator::Harvesin.call([53.339428, -6.257664], [52.986375, -6.043701])
```
Or  also by including it in any wrapper/facade calculator class in your application
```ruby
class MyClass
    include AwesomeDistanceCalculator
end
```
That will add the `.calculate`method on your newly created class, so you could as follows:
```ruby
calculator = MyClass.new
calculator.calculate(coordinates: [[53.339428, -6.257664], [52.986375, -6.043701]])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tiarly/awesome_distance_calculator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AwesomeDistanceCalculator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tiarly/awesome_distance_calculator/blob/master/CODE_OF_CONDUCT.md).
