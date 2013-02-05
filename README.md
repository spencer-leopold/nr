# Newrepo

Newrepo is a tool to quickly create bitbucket, and eventually github repositories from the command line.

## Installation

After cloning the repo, run:

    $ bundle install

and then:

    $ rake install

it doesn't matter where you install it, you'll be able to run the command from any directory

## Usage

The basic command is:

    $ nr [repo-type] [repo-name]

It will automatically prompt for your username, password, and language for the repo.
You can run the command and generate a repo without a description, but if you prefer, you can set a flag (-d) for a description as well.

Example:

    $ nr private MyTestRepo -d "This is just a test, do not be alarmed."
