class DateOffsets
  attr_reader :date_offsets
  def initialize(date_offsets = today)
    @date_offsets = date_offsets
  end

  def today
    Time.now.strftime("%m%d%y")
  end

  def square
    (@date_offsets.to_i ** 2).to_s
  end

  def offsets
    square.chars.last(4).map do |i|
      i.to_i
    end
  end
end
