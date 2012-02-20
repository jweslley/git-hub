# GitHub Tools

GitHub for hackers.

Note: Working in progress. Changes will come.

## Requirements

  * [jshon](https://github.com/keenerd/jshon)

Note: jshon requires `libjansson4`. On Debian systems, you can install it using:

        apt-get install libjansson4

## Installation

Clone this repository:

    git clone git://github.com/jweslley/github-tools.git

And add the `bin/` directory in your `PATH`:

    export PATH="$PATH:/path/to/github-tools/bin"

## Setup

Mostly operations in GitHub tools requires access to your GitHub data, this access is granted using the fabulous [GitHub API](http://api.github.com/). For this, you need to generate a OAuth token using the following command:

    git gh-oauth

## Usage

Mostly commands are self explanatory, but I will add better docs later.

### git-fork

Fork a github repository.

### git-pull-request

List all pull requests when no args are provided.

    git pull-request open <base> <head> [<title> <message>]

    git pull-request close <pull-request-id>

    git pull-request merge <pull-request-id> [<message>]

    git pull-request apply <pull-request-id>

    git pull-request show <pull-request-id>

### git-repo

List all repos when no args are provided.

    git repo create <name>

### git-ssh-key

List all ssh keys when no args are provided.

    git ssh-key add <title> <pubkey_file>

    git ssh-key rm <key_id>

## Contributing

If you discover any bugs or have some idea, feel free to create an issue on GitHub:

    https://github.com/jweslley/github-tools/issues

Looking for ideas:

1. [Fork](http://help.github.com/forking/) GitHub tools
2. Look at `todo.md` or run `git grep -E "TODO|FIXME"`
3. Create a topic branch - `git checkout -b my_branch`
4. Make some awesome code.
5. Push to your branch - `git push origin my_branch`
6. Create a [Pull Request](http://help.github.com/pull-requests/) from your branch
7. That's it!

## License

MIT License. Copyright 2012 Jonhnny Weslley. http://jonhnnyweslley.net
