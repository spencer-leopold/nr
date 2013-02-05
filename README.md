# Newrepo

Newrepo is a tool to quickly create bitbucket, and eventually github repositories from the command line.

## Installation

After cloning the repo, run:

    $ bundle install

and then:

    $ rake install

Just like any other gem, you'll be able to run the command from any directory.

## Usage

The basic command is:

    $ nr [repo-type]

It will automatically prompt for your username, password, language, and description.  The languages are only popular ones, so if you need on that isn't listed, just run the command with (-l LANGUAGE).

Example:

    $ nr private -l Arduino
