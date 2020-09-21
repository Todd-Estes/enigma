require './test/test_helper.rb'
require './lib/enigma'
require 'date'
require'mocha/minitest'
require'./lib/shift_maker'

class ShiftMakerTest < Minitest::Test
  def setup
    @shift_maker = ShiftMaker.new
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @shift_maker.alphabet
  end

  def test_it_exists
    assert_instance_of ShiftMaker, @shift_maker
  end

  def test_it_makes_an_offset
    # skip
    assert_equal "6400", @shift_maker.make_offset("200920")
  end

  def test_it_converts_to_keys
    # skip
    assert_equal [38, 88, 88, 89], @shift_maker.convert_keys("38889")
  end

  def test_it_will_make_shifts
    # skip
  assert_equal [86, 33, 94, 45], @shift_maker.make_shifts("82945", "103120")
  end

  def test_it_can_shift_characters
    assert_equal "a", @shift_maker.shift_characters("r", 10)
  end

  def test_it_can_shift_back_characters
    assert_equal "h", @shift_maker.shift_back_characters("r", 10)
  end

  def test_it_can_shift_a_message
    # skip
    assert_equal "jfizfby", @shift_maker.shift_message("pickles", "42069", "190920")
  end




end
