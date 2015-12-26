# Rspark::Spark

[![Build Status](https://travis-ci.org/radubogdan/rspark-spark.svg?branch=master)](https://travis-ci.org/radubogdan/rspark-spark)
[![Gem Version](https://badge.fury.io/rb/rspark-spark.svg)](https://badge.fury.io/rb/rspark-spark)

Displays beautiful graphs to use in the terminal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspark-spark'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspark-spark

## Usage

**From Ruby**

```ruby
s = Rspark::Spark.new(
  values: [1,2,3]
)
s.pretty_print
```

- values: array of numbers (mandatory)
- max: maximum number (optional - default to max number in values)
- direction: horizontal/vertical (optional - default horizontal)

**From terminal**

Just run rspark and pass it a list of numbers (comma-delimited or spaces).

```
rspark 0 30 55 80 33 150
▁▂▃▅▂▇
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/radubogdan/rspark-spark.


## Thanks

Inspired from [holman/spark](https://github.com/holman/spark)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
