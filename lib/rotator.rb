require_relative 'rotations'

class Rotator
  attr_reader :rotations, :characters

  def initialize(rotations = Rotations.new.merge)
    @rotations = rotations
  end

  def character_map
    [*('a'..'z'), *('0'..'9'), ' ', '.', ',']
  end

  def forward_rotator(message_chars)
    message_chars.map.with_index do |letter, index|
      msg_index = index % 4
      map_index = character_map.index(letter)
      character_map[(rotations[msg_index] + map_index) % character_map.length]
    end.join
  end

  def backward_rotator(message_chars)
    message_chars.chars.map.with_index do |letter, index|
      msg_index = index % 4
      map_index = character_map.index(letter)
      character_map[(map_index - rotations[msg_index]) % character_map.length]
    end.join
  end

end


