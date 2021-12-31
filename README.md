# Iconify::Ruby

[![Build Status](https://github.com/ruby-gems/iconify-ruby/actions/workflows/ruby.yml/badge.svg)](https://github.com/ruby-gems/iconify-ruby/actions/workflows/ruby.yml)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iconify-ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install iconify-ruby

## Usage

```ruby
# get collection
collections = Iconify::Ruby.collections
locate = Iconify::Ruby.locate("bx")
svg_path = locale["icons"]["bx-abacus"]["body"]

# render svg string
module ApplicationHelper
  include Iconify::Ruby::Helper
end
```

```erb
<%== iconify_icon("bx-chevron-up", class: 'w-4 h-4 text-red-500') %>

<%== iconify_icon("chevron-down", class: 'w-4 h-4 text-red-500', locate: 'akar-icons') %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby-gems/iconify-ruby.
