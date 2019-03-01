# capistrano-middleman2

Run middleman's build command on each host.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-middleman2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-middleman2

## Usage

Add to Capfile:

```ruby
require 'capistrano/middleman2'
```

And run deploy!
Then `bundle exec middleman build` runs on each host's release path.

### Options

```ruby
# Build command to be run
set :middleman_build_command,               ->{ [:bundle, :exec, :middleman, :build] }

# Environment variables to run the build command
set :middleman_build_environment_variables, ->{ {} }

# Role(s) on where the build command run
set :middleman_roles,                       ->{ :all }
```

### Not Options

- build directory : this is configurable with config.rb
- source directory : this is configurable with config.rb

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capistrano-middleman2.
