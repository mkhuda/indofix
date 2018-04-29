# Indofix
Affixed word to the base word for Bahasa. As used for [ibahasa.com](https://www.ibahasa.com) Puebi Engine. (Beta Un-well tested)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "indofix"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indofix

## Usage

```
Indofix.check("nomina", "sulapan") => ["sulap"] (Array)

Indofix.check("nomina", "seandainya") => ["seandai", "andainya", "andai"] (Array)
```
Valid params is `nomina`, `verba`, `kpst`, and `other`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iBahasa/indofix. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Indofix project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/iBahasa/indofix/blob/master/CODE_OF_CONDUCT.md).
