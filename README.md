# Indofix [![Build Status](https://travis-ci.org/iBahasa/indofix.svg?branch=master)](https://travis-ci.org/iBahasa/indofix)
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

```ruby
require('indofix')

Indofix.check("nomina", "sulapan") => ["sulap"] # Return (Array)

Indofix.check("nomina", "seandainya") => ["seandai", "andainya", "andai"] # Return (Array)

Indofix.stupid_check("menyisakan") => {"menyisak"=>"other_adverbia_x_an", "menyisa"=>"verba_x_kan", "nyisakan"=>"other_adjektiva_me_x", "nyisa"=>"verbaplural_me_x_kan", "nyisak"=>"other_adjektiva_me_x_an", "enyisakan"=>"imbuhan_m_x"} # Return (Hash)
```
Valid params is `nomina`, `verba`, `kpst`, and `other`

NOTICE: `kpst` is under going.

> This gem are still under development, Open Issues / Ideas are welcome. Thank you

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iBahasa/indofix. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Indofix project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/iBahasa/indofix/blob/master/CODE_OF_CONDUCT.md).
