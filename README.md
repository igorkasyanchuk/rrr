# rrr (run recent rspecs)

## For people who are tired specifying path to changed spec files.

Sometimes you want to run only recenly changed specs. And you don't want to specify them like:

`rspec spec/models/user_spec.rb spec/controllers/users_controller_spec.rb`.

What if you can just run rspec for recently changed specs. This gem allows it. It remember when you executed it and will run more specs again.

## Installation

This works only with rspecs, so it's a required tool.

Install it yourself as:

    $ gem install rrr-cli

Add to `.gitignore` - `.rrr`.

Now you can call `rrr` in project folder.

## Usage

Just call `rrr` in folder of your app.

It will run "rspec" or "rspec (with changed files)" in your local folder.

## Alternatives

There is an alternative with well known `guard`, but not many people are using it and it requires to have running process.

## TODO

* integrate with spring
* integrate with rate tests (maybe with `ttt` command)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/igorkasyanchuk/rrr.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=rrr)
