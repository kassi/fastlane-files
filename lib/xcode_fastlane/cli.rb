# frozen_string_literal: true

require "thor"

module XcodeFastlane
  # Command line interface for the thor tool.
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.join(File.dirname(File.dirname(__FILE__)), "templates")
    end

    desc "init", "Initialize fastlane setup"
    def init
      %w[
        .gitignore
        Gemfile
        fastlane/.env.beta
        fastlane/.env.ios
        fastlane/.env.mac
        fastlane/.env.release
        fastlane/Appfile
        fastlane/Fastfile
        fastlane/Snapfile
      ].each do |file|
        copy_file file
      end
    end

    # TODO: run deliver init and overwrite with Deliverfile
  end
end
