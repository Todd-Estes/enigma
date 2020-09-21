require './test/test_helper.rb'
require './lib/enigma'
require 'date'
require'mocha/minitest'
require'./lib/shift_maker'

class ShiftMakerTest < Minitest::Test
  def setup
    @shift_maker = ShiftMaker.new
  end

  def test_it_exists
    # skip
    assert_instance_of ShiftMaker, @shift_maker
  end

  def test_it_has_an_alphabet
    # skip
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, ShiftMaker.alphabet
  end

  def test_it_makes_an_offset
    # skip
    assert_equal "6400", ShiftMaker.make_offset("200920")
  end

  def test_it_converts_to_keys
    # skip
    assert_equal [38, 88, 88, 89], ShiftMaker.convert_keys("38889")
  end

  def test_it_will_make_shifts
    # skip
  assert_equal [86, 33, 94, 45], ShiftMaker.make_shifts("82945", "103120")
  end

  def test_it_can_shift_characters
    # skip
    assert_equal "a", ShiftMaker.shift_characters("r", 10)
  end

  def test_it_can_shift_back_characters
    # skip
    assert_equal "h", ShiftMaker.shift_back_characters("r", 10)
  end

  def test_it_can_shift_a_message
    # skip
    assert_equal "jfizfby", ShiftMaker.shift_message("pickles", "42069", "190920")
  end

  def test_it_can_unshift_a_message
    # skip
    assert_equal "pickles", ShiftMaker.shift_back_message("jfizfby", "42069", "190920")
  end
end
