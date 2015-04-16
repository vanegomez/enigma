class KeyOffsets
  attr_reader :key_offsets
  def initialize(key_offsets = key_gen)
    @key_offsets = key_offsets
  end

  def key_gen
    5.times.map { (0..9).to_a.sample }.join
  end

  def offsets
    key_offsets.chars.each_cons(2).map do |nums|
      nums.join
    end.map do |num_string|
      num_string.to_i
    end
  end
end

# key = Key.new
#
# key.offsets


# class Key
#
#   def self.offsets
#     p 'blah'
#   end
# end
#
# p Key.offsets
