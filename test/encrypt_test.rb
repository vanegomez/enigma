require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encrypt'

class EncryptTest < Minitest::Test

  def test_it_creates_encrypted_file
    ARGV[0] = 'message.txt'
    ARGV[1] = 'encrypted.txt'
    Encrypt.new("ruby").encryptor
    assert File.exist?('encrypted.txt')
  end

  # def test_it_encrypts
  #   encrypt = Encrypt.new("hello").encryptor
  #   assert_equal "uq001", encrypt
  # end

end
