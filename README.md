# PpgLeaders

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ppg_leaders`. To experiment with that code, run `bin/console` for an interactive prompt.

Rubygem that displays information about the three PPG (points per game) leaders of the 2017 Cleveland Cavaliers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ppg_leaders'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ppg_leaders

## Usage

From the list generated below, the user will input the number corresponding to the player that they'd like to read more about.

Points Per Game Leaders for the Cavaliers
1. LeBron James - #23 - F
2. Kyrie Irving - #2 - G
3. Kevin Love - #0 - F

Ex. if the user inputs "1" the below result:

LeBron James - #23 - F
PLAYOFF CAREER: For his postseason career, has appeared in 199 playoff contests (all starts) with averages of 28.0 points, 8.8
rebounds, 6.8 assists and 1.8 steals in 42.1 minutes per game

Ex. if the user inputs "list" the below result:
The above list of players is displayed

Ex. if the user inputs "exit" the below result:
An exit message will appear and will exit.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'sabrinajones87-48888'/ppg_leaders.
