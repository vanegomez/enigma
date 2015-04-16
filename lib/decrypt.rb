require_relative 'rotator'
require_relative 'date_offsets'
require_relative 'key_offsets'

class Decrypt
  attr_reader :encrypted_message, :filename, :rotations

  def initialize(encrypted_message, filename, key, date)
    @encrypted_message = encrypted_message
    @rotations = Rotations.new(KeyOffsets.new(key).offsets, DateOffsets.new(date).offsets).merge
    @filename = filename
  end

  def encrypted_message_chars
    encrypted_message.chars
  end

  def decryptor
    decrypted = Rotator.new(rotations).backward_rotator(encrypted_message_chars)
    decrypted_file = File.open(filename, "w")
    decrypted_file << decrypted
    decrypted_file.close
  end
end

if __FILE__ == $0
  message = File.read(ARGV[0])
  filename = ARGV[1]
  Decrypt.new(message, filename, ARGV[2], ARGV[3]).decryptor
end
