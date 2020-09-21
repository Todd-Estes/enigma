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

  def test_
end
