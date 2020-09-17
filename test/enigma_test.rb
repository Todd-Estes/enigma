require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
     @enigma = Enigma.new
  end

  def test_it_can_generate_a_key

    srand(99999)

    assert_equal "19787", @enigma.generate_key
  end

  def 
end
