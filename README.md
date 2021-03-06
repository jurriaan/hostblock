# Hostblock

[![Gem Version](http://img.shields.io/gem/v/hostblock.svg)](http://badge.fury.io/rb/hostblock) [![Dependency Status](http://img.shields.io/gemnasium/jurriaan/hostblock.svg)](https://gemnasium.com/jurriaan/hostblock)

Hostblock generates a hostfile based blocklist from various [sources](https://github.com/jurriaan/hostblock/blob/master/lib/hostblock.rb)

## Installation

Install it yourself as:

    $ gem install hostblock

## Usage

    # hostblock >> /etc/hosts

or in VIM:

    :r !hostblock

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/jurriaan/hostblock/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
