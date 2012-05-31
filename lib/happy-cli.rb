require "happy-cli/version"
require 'thor'

module HappyCLI
  class Command < Thor
    include Thor::Actions

    source_root(File.expand_path('../templates', __FILE__))

    desc "new NAME", "Creates a new Happy application."

    method_option :template, :aliases => "-t", :default => "standard", :type => :string,
      :desc => "Application template to use. [standard, minimal]"

    method_option :git, :aliases => "-g", :default => false, :type => :boolean,
      :desc => "Initialize a git repository in your blog's directory."

    def new(name)
      @name = name
      self.destination_root = name
      directory options[:template], '.'

      in_root do
        if options[:git]
          run "git init"
          run "git add ."
          run "git commit -m 'Created new Schnitzelpress blog'"
        end
      end
    end

  end
end
