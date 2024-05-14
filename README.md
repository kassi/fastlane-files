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

This will create a new `Gemfile`, `.gitignore`, the `fastlane` folder, and `ci_scripts` folder.

Next, adapt the files in the `fastlane` folder according to your needs and check the contents of the ci scripts.

## Xcode Cloud Workflow Setup

- Create a new workflow
- Choose archive
- Add to environment variables all variables mentioned in the `Appfile` with proper values.
- You may want to run `bundle exec fastlane deliver` with proper values in order to download the existing metadata.

Now when this workflow runs, the screenshots will be generated and uploaded together with the metadata to AppStore Connect.
