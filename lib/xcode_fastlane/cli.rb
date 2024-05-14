require "thor"

module XcodeFastlane
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.join(File.dirname(File.dirname(__FILE__)), "templates")
    end

    desc "init", "Initialize fastlane setup"
    def init
      copy_file ".gitignore"
      copy_file "Gemfile"
      copy_file "fastlane/Appfile"
      copy_file "fastlane/Deliverfile"
      copy_file "fastlane/Fastfile"
      copy_file "fastlane/Snapfile"
    end
  end
end
