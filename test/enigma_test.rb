require './test/test_helper.rb'
require './lib/enigma'
require './lib/shift_maker'
require 'date'
require'mocha/minitest'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_finds_the_date
    # skip
    Date.stubs(:today).returns(Date.new(2020,8,20))
    assert_equal "200820", @enigma.get_date
  end

  def test_it_generates_a_five_digit_number
    # skip
    srand(99999)
    assert_equal "19787", @enigma.create_key
  end

  def test_it_can_encrypt
    # skip
Date.stubs(:today).returns(Date.new(2020,9,20))
 expected = {
              :encryption => "jfizfby",
              :key => "42069",
              :date => "200920"
                }
    assert_equal expected, @enigma.encrypt("pickles", "42069")
  end

  def test_it_can_decrypt
    # skip
    Date.stubs(:today).returns(Date.new(2020,9,20))
    expected = {
              :decryption => "pickles",
              :key => "42069",
              :date => "200920"
                }
    assert_equal expected, @enigma.decrypt("jfizfby", "42069")
  end
end
