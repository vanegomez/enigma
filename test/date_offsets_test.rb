require 'minitest/autorun'
require 'minitest/pride'
require '../lib/date_offsets'

class DateOffsetsTest < Minitest::Test
  def test_it_use_today_date_if_none_is_provided
    today = Time.now.strftime("%m%d%y")
    assert_equal today, DateOffsets.new.today
  end

  def test_it_creates_squares
    assert_equal "8192422144", DateOffsets.new("090512").square
  end

  def test_it_takes_last_four_digits_of_square
    assert_equal [2,1,4,4], DateOffsets.new("090512").offsets
  end
end
