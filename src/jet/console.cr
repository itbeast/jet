require "./console/command"

module Jet
  module Console
    def self.run
      Jet::Console::Command.parse
    end
  end
end
