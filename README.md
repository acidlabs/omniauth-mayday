# Omniauth::Mayday

OmniAuth Strategy for MayDay Login

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-mayday'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-mayday

## Usage

Create a **omniauth-mayday.yml** file in your config directory

```
development:
  auth_server_url: "YOUR-AUTH-SERVER-URL"
  auth_server_path: "YOUR-AUTH-SERVER-AUTHORIZE-PATH"
```

#### Example

```
development:
  auth_server_url: "http://localhost:3000/"
  auth_server_path: "/oauth/authorize"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/acidlabs/omniauth-mayday.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

