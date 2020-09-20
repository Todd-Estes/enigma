require './test/test_helper.rb'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    # skip
    assert_instance_of Enigma, @enigma
  end

  def test_it_finds_the_date
    skip
    # This needs either mocks or stubs
    Date.stubs(:today).returns(Date.new(2020,9,20))
    assert_equal "190920", @enigma.get_date
  end

  def test_it_generates_a_five_digit_number
    srand(99999)
    assert_equal "19787", @enigma.create_key
  end
  # This needs either mocks or stubs
  def test_it_makes_an_offset
    skip

    assert_equal "8400", @enigma.make_offset("")
  end

  def test_it_converts_to_keys
    # skip
    assert_equal [38, 88, 88, 89], @enigma.convert_keys("38889")
  end
  # This needs either mocks or stubs
  def test_it_will_make_shifts
    # skip
  assert_equal [86, 33, 94, 45], @enigma.make_shifts("82945", "103120")
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_it_can_shift_characters
    assert_equal "a", @enigma.shift_characters("r", 10)
  end

  def test_it_can_shift_back_characters
    assert_equal "h", @enigma.shift_back_characters("r", 10)
  end

  def test_it_can_shift_a_message
    skip
    # this needs stubs to get working

    # @enigma.stubs(:make_shifts).returns([13, 22, 76, 33])
    assert_equal "", @enigma.shift_message("pickles")
  end

  def test_it_can_unshift_a_message
    skip

    assert_equal "", @enigma.shift_back_message(message, keys, date)
  end

  def test_it_can_encrypt
    # skip

    expected = {
              :encryption => "jfizfby",
              :key => "42069",
              :date => "190920"
                }
    assert_equal expected, @enigma.encrypt("pickles", "42069")
  end

  def test_it_can_decrypt
    # skip
    expected = {
              :decryption => "pickles",
              :key => "42069",
              :date => "190920"
                }
    assert_equal expected, @enigma.decrypt("jfizfby", "42069")
  end
end
