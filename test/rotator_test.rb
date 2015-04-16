require 'minitest/autorun'
require 'minitest/pride'
require '../lib/rotator'

class RotatorTest < Minitest::Test

  def test_it_has_total_values
    assert_equal [14,24,38,49], Rotator.new.rotations
  end

  def test_characters_encrypts_one_character
    encrypt = Rotator.new.forward_rotator(["a"])
    assert_equal "o", encrypt
  end

  def test_characters_encrypts_two_characters_and_space
    encrypt = Rotator.new.forward_rotator(["a"," "])
    assert_equal "ov", encrypt
  end

  def test_encrypts_period_and_comma
    encrypt = Rotator.new.forward_rotator([".",","])
    assert_equal "mx", encrypt
  end

  def test_encrypts_a_message
    encrypt = Rotator.new.forward_rotator(["h","e","l","l","o"])
    assert_equal "v2kv2", encrypt
  end

  def test_decrypts_a_message
    decrypt = Rotator.new.backward_rotator("v2kv2")
    assert_equal "hello", decrypt
  end
end
