# Xcode Fastlane

Provides tools to easily manage `fastlane` for screenshot and metadata uploads,
when building on Xcode Cloud.

## Installation

In order to run this command globally to initialize a project, install the gem globally.

```shell
gem install xcode_fastlane
```

## Usage

First, initialize your xcode project directory.

```shell
xcode_fastlane init
bundle install
```

This will create a new `Gemfile`, `.gitignore`, and the `fastlane` folder.

Next, adapt the files in the `fastlane` folder according to your needs.
