Fork from [TheNaox](https://github.com/TheNaoX/freegeoip)'s repo to [update the endpoint and add the access key](https://github.com/apilayer/freegeoip/#freegeoip---important-announcement) for a project.

# Freegeoip Ruby

A Ruby library for the [Freegeoip API](http://freegeoip.net).

## Installation

Add this line to your application's Gemfile to use this fork:

```ruby
gem 'freegeoip-ruby', git: 'git@github.com:Zauvohi/freegeoip.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freegeoip-ruby

## Required Changes to Legacy Integrations (freegeoip.net/json/xml)

Taken from [Freegeoip](https://github.com/apilayer/freegeoip/#required-changes-to-legacy-integrations-freegeoipnetjsonxml) new repo's README:


>As of March 31 2018 the old freegeoip API is deprecated and a completely re-designed API is now accessible at http://api.ipstack.com. While the new API offers the same capabilities as the old one and also has the option of returning data in the legacy format, the API URL has now changed and all users are required to sign up for a free API Access Key to use the service.


For this gem, go to [ipstack](https://ipstack.com/) and create an account. Then put your access key in an environment variable (or .env file if you're using dotenv) as `IPSTACK_ACCESSS_KEY`. That's it.

## Usage

Anywhere in your code

```ruby
require 'freegeoip'

Freegeoip.get('google.com')
 => #<Freegeoip::Response:0x007f9552bb9ba0
     @remote="google.com",
     @ip="172.217.7.14",
     @country_code="US",
     @country_name="United States",
     @region_code="CA",
     @region_name="California",
     @city="Mountain View",
     @zip_code="94043",
     @time_zone="America/Los_Angeles",
     @latitude=37.4192,
     @longitude=-122.0574,
     @metro_code=807>
```

In the command line

```bash
$ freegeoip get google.com
Searching for: google.com
------------------------
IP: 172.217.5.14
Country code: US
Country name: United States
Region code: CA
Region name: California
City: Mountain View
ZIP Code: 94043
Time zone: America/Los_Angeles
Latitude: 37.4192
Longitude: -122.0574
Metro code: 807
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TheNaoX/freegeoip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
