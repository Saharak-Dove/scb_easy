# ScbEasy

Very simple gem to access your SCB Easy (Siam Commercial Bank) account data programmatically.

## Installation

Make sure you have `chromedriver` installed and working.

```shell
$ brew tap homebrew/cask
$ brew install cask chromedriver
```

Add this line to your application's Gemfile:

```ruby
gem 'scb_easy'
```

And then execute:

```
  $ bundle
```

Or install it yourself as:

```
  $ gem install scb_easy
```

## Usage

Currently it only supports your total savings:

```ruby
$ scbeasy = ScbEasy::Client.new(username: 'your_username', password: 'your_password')
$ scbeasy.savings
"133,742.42"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/scb_easy. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ScbEasy project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/scb_easy/blob/master/CODE_OF_CONDUCT.md).
