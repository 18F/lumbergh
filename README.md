# Lumbergh

18F's automated access management automaton.

## Responsibilities

***Note: this is a roadmap, not a list of current features.***

* Automatically add new staff when they are added to our [Team API](https://github.com/18F/team_api)
* Ensure that all staff have two-factor authentication enabled in GitHub (via [gu-who](https://github.com/guardian/gu-who))

## Usage

1. Clone this repository
1. Run `bundle`
1. Run

    ```bash
    $ GITHUB_TOKEN=... bundle exec ruby users.rb
    Missing from @18F/18f:
    ...

    Missing from the Team API:
    ...
    ```
