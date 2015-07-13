# Newrepo

Newrepo is a tool to quickly create bitbucket, and github repositories from the command line.

## Installation

After cloning the repo, run:

    $ bundle install

and then:

    $ rake install

## Usage

The basic command is:

    $ nr [repo-type]

It will automatically prompt for your username, password, language (if using Bitbucket), and description. The languages listed are only the popular ones on BitBucket, so if you need one that isn't listed run the command with (-l LANGUAGE).

Example:

    $ nr private -l Arduino
