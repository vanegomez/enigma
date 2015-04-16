require_relative 'key_offsets'
require_relative 'date_offsets'

class Rotations

  attr_reader :key, :date

  def initialize(key = KeyOffsets.new("12345").offsets, date = DateOffsets.new("090512").offsets)
    @key = key
    @date = date
  end

  def merge
    @key.zip(@date).map do |a|
      a.inject(:+)
    end
  end
end



