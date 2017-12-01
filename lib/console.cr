# require "./console/command"
require "colorize"

module Jet
  class Console

    COMMANDS = [
      {
        names: %w(-h --help help),
        method: :help,
        options: "",
        example: "",
        description: "Show help for console application"
      },
      {
        names: %w(-v --version version),
        method: :version,
        options: "",
        example: "",
        description: "Show current version"
      },
      {
        names: %w(new),
        method: :new,
        options: "",
        example: "",
        description: "Create new application"
      }

    ]

    def self.run
      @@console = Jet::Console.new
      #::Command.parse
    end

    def initialize
      if ARGV.size == 0
        print_logo
      else
        parse_argv
      end
    end

    def run_method(method : Symbol)
      case method
        when :version then self.version_cmd
        when :help then self.help_cmd
        when :new then self.new_cmd
      end
    end

    def print_logo
      puts "JET ⬡ #{Jet::VERSION}".colorize.fore(:green)
    end

    def version_cmd
      print_logo
      puts "JET version: #{Jet::VERSION}"
      puts "crystal version: #{Crystal::VERSION}"
    end

    def help_cmd
      print_logo

      if ARGV.size > 1

      else
        puts "\tCommands:\t\t\tDescription:"
        COMMANDS.each do |cmd|
          puts "\n\t#{cmd[:names].join(", ")}\t\t#{cmd[:description]}"
        end
        puts "\n"
      end

    end

    def new_cmd
      print_logo
      if ARGV.size > 1
        puts "NEW"
        puts ARGV[1]
      end
    end

    private (
      def parse_argv
        COMMANDS.each do |cmd|
          if cmd[:names].any? {|name| name == ARGV[0]}
            self.run_method(cmd[:method])
          end
        end
      end
    )
  end
end
