require './test/test_helper.rb'
require './lib/enigma'
require './lib/command_line_interface'

class CommandLineInterfaceTest < Minitest::Test
  def setup
    @cli = CommandLineInterface.new(argv)
  end

  def test_it_exists
    assert_instance_of CommandLineInterface, @cli
  end
end
