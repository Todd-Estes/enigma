require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
     enigma = Enigma.new
     assert_instance_of Enigma, enigma
  end

  def test_it_finds_the_date
    skip
    # This needs either mocks or stubs
    # Date.stubs(:today).returns(Date.new(2020,2,24))
    enigma = Enigma.new
    skip
    assert_equal "180920", enigma.get_date
  end

  def test_it_generates_a_five_digit_number
    enigma = Enigma.new

    srand(99999)
    assert_equal "19787", enigma.create_key
  end
  # This needs either mocks or stubs
  def test_it_makes_an_offset
    skip
    enigma = Enigma.new

    assert_equal "8400", enigma.make_offset
  end
# This needs either mocks or stubs
  def test_it_converts_to_keys
    # skip
    enigma = Enigma.new
    create_key = 52397
    assert_equal [38, 88, 80, 0], enigma.convert_into_keys
  end

  def test_it_adds_offsets_to_keys
    enigma = Enigma.new
    require "pry"; binding.pry

  end

  def it_makes_the_shifts
    enigma = Enigma.new

  end
end
