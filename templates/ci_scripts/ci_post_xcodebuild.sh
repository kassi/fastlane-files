#!/bin/zsh

# Only run when the archive workflow runs.
# Adapt to your needs.
if [[ ! "$CI_XCODEBUILD_ACTION" = "archive" ]]; then exit 0; fi

RUBY_PATH=$(brew --prefix ruby)/bin
export PATH="$RUBY_PATH:$PATH"

cd ..
bundle exec fastlane upload_appstore_data
