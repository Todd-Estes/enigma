require './test/test_helper.rb'
require './lib/enigma'

class CommandLineInterfaceTest < Minitest::Test
  def setup
    @cli = CommandLineInterface.new
  end

end 
