require "./lib/version"
require "./lib/console"

module Jet

  def self.run
    Jet::Console.run
  end

end

# ARGV << "-v"

# ARGV << "new"
# ARGV << "test"

Jet.run
