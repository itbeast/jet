require "colorize"

module Jet
  module Console
    class Command
    
      COMMANDS = [
        {
          names: %w(-h --help help),
          method: :help,
          description: "Help"
        },
        {
          names: %w(-v --version version),
          method: :version,
          description: "Version"
        }
      
      ] 
      
      def self.parse
      
#        p ENV["PWD"]
        
        command = Command.new
            
        if ARGV.size == 1
          COMMANDS.each do |c|
           command.run(c[:method]) if c[:names].any? {|n| n == ARGV[0]}
          end
        else
        
        end
      
        
      
      end
      
      def run(command : Symbol)
        case command
          when :version then self.version
          when :help then self.help
        end
      end
    
      def version
        puts ("JET version " + Jet::VERSION).colorize.fore(:green)
      end
      
      def help
        puts "JET [#{Jet::VERSION}]:".colorize.fore(:green)
        COMMANDS.each do |c|
          puts "\t#{c[:names].join(", ")}\t\t#{c[:description]}"
        end
      end
    end
  end
end
