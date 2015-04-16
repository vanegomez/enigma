require_relative 'rotator'

class Encrypt
  attr_reader :message

  def initialize(message)
    @message = message.chomp
  end

  def message_chars
    @message.downcase.chars
  end

  def encryptor
    encrypted = Rotator.new.forward_rotator(message_chars)
    encrypted_file = File.open(ARGV[1], "w") #--> creates my file where encrypted message goes
    encrypted_file << encrypted
    encrypted_file.close
  end

end

if __FILE__ == $0
  message = File.read(ARGV[0])
  Encrypt.new(message).encryptor
end

