# Gift Tracker

This is a work-in-progress application for managing gift lists and purchases.  For example, a family's holiday wishlist.
The application is written using Ruby on Rails (see Gemfile and .ruby-version for latest platform versions).
It is meant to be dead-simple, taking advantage of as many Rails 8 defaults as possible (e.g. sqlite over mysql or postgres).

## Running the App
1. Clone this repo
1. Run `cd gift-tracker`
1. Run `bin/setup` to install dependencies
1. Run `bin/rails s` to run the development server

The application also comes with a devcontainer configuration, if you prefer (instructions below assume you are using VS Code):
1. Clone this repo
1. Run `code gift-tracker`
1. VS Code should detect the .devcontainer configuration and prompt you to re-open the application in a new container

## Running Tests
1. Clone this repo
1. Run `cd gift-tracker`
1. Run `bin/setup`
1. Run `bin/test`

## Contributing
Contributions welcome.  Please open an issue describing your request, or a pull request if you're able to make the change yourself.
