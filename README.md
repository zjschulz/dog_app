# Dog_App

This application was designed with dog shelters, ASPCA centers, and other various locations where volunteers are needed to walk dogs. This lets a user log in, create volunteers, and add walks with dogs for each volunteer. The duration of each walk is monitored and each volunteer has their total duration of walks present on the volunteer page.

## Installation

Place the below line in your terminal

    $ git clone dog_appgit@github.com:zjschulz/dog_app.git

Open the folder created by the above line and "cd" into the folder.

Type the below to initate the local environment

    $ rails s

In a local browser, type localhost/3000/home into the url to view the application.

## Usage

To initiate my application, type rails s to access the Rails server needed to go to the correct url, which will be "localhost/3000".

When the local host is connected and the url is typed, you will begin at the welcome page for my application.

You need to either log in or sign up to access the remaining views, however even if you are not logged in you may view the "dogs" view.

After doing so, you will be taken to the view which displays all volunteers if you are already a user, or to a new volunteer view if you are a new user.

You may either go back to the home page, view all volunteers, create a walk, view all dogs, or log out.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'avid-suite-3011'/dmtool. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Dmtool project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'avid-suite-3011'/dmtool/blob/master/CODE_OF_CONDUCT.md).
