require 'minitest/autorun'
require 'minitest/pride'
require '../lib/key_offsets'

class KeyTest < Minitest::Test
  def test_it_generates_a_key
    key_gen = KeyOffsets.new.key_gen
    assert_equal 5, key_gen.length
  end

  def test_it_creates_key_offsets
    key_offsets = KeyOffsets.new("12345")
    assert_equal [12,23,34,45], key_offsets.offsets
  end
end
