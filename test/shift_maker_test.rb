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
    assert_instance_of ShiftMaker, @shift_maker
  end

  def test_it_makes_an_offset
    # skip
    assert_equal "6400", @shift_maker.make_offset("200920")
  end

  def test_it_converts_to_keys
    # skip
    assert_equal [38, 88, 88, 89], @enigma.convert_keys("38889")
  end


end
