require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists

     enigma = Enigma.new
     assert_instance_of Enigma, enigma
  end


  def test_it_finds_the_date
    enigma = Enigma.new

    assert_equal "091720", enigma.get_date
  end

  def test_it_generates_a_five_digit_number
    enigma = Enigma.new

    srand(99999)
    assert_equal "19787", enigma.generate_key
  end




end
