require 'minitest/autorun'
require 'minitest/pride'
require '../lib/decrypt'

class DecryptTest < Minitest::Test

  def test_it_creates_decrypted_file
    ARGV[0] = 'encrypted.txt'
    ARGV[1] = 'decrypted.txt'
    Decrypt.new("95o4","12345","090512").decryptor
    assert File.exist?('decrypted.txt')
  end

end
