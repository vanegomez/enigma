require 'minitest/autorun'
require 'minitest/pride'
require '../lib/rotations'

class RotationsTest < Minitest::Test

  def test_it_has_a_key
    offsets = Rotations.new
    assert_equal [11,11,11,11], offsets.key
  end

  def test_it_has_a_date
    offsets = Rotations.new
    assert_equal [2,1,4,4], offsets.date
  end

  def test_it_merges_a_key_and_a_date
    offsets = Rotations.new.merge
    assert_equal [13,12,15,15], offsets
  end
end
