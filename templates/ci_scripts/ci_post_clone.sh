#!/bin/zsh

# Only run when the archive workflow runs.
# Adapt to your needs.
if [[ ! "$CI_XCODEBUILD_ACTION" = "archive" ]]; then exit 0; fi

set -euo pipefail
# set -e # Exit immediately on error
# set -u # Exit on undefined variables
# set -x # Print commands and their arguments as they are executed
# set -o pipefail # Exit on failures in piped commands.

brew install ruby

RUBY_PATH=$(brew --prefix ruby)/bin
export PATH="$RUBY_PATH:$PATH"
sed -i '' "s#PATH=:#PATH=:$RUBY_PATH:# " ~/zshrc

gem install bundler
bundle install
