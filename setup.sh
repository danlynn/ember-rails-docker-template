#!/usr/bin/env bash

# Note that this will automagically be ran if you have rvm installed.
# This shell file sets up the following aliases whenever you cd into
# the current directory tree.
#
# If rvm is not installed then you can simply run:
#   . setup.sh
#

# ember
alias   npm='fig -f fig-dev.yml run --rm npm'
alias bower='fig -f fig-dev.yml run --rm bower'
alias ember='fig -f fig-dev.yml run --rm ember'

# rails
alias bundle='fig run railssvr bundle'
alias  rails='fig run railssvr rails'
alias   rake='fig run railssvr rake'

# TODO: Add bash {service} <- opens container in bash
# $ docker run --interactive --tty --entrypoint=/bin/bash 766162a99b23 --login

# TODO: Add ssh {service} <- ssh into sshd running in rails container

echo 'Configured aliases for current project:'
echo '  npm, bower, ember, bundle, rails, rake'
