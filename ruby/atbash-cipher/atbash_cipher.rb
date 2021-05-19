=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end

module Atbash
  extend self

  ALPHABET = ("a".."z").to_a
  CYPHER = ALPHABET.reverse

  def encode(text)
    text = text.downcase.gsub(/\W+/, "")
    encoded = text.chars.map do |let|
      ALPHABET.include?(let) ? CYPHER[ALPHABET.index(let)] : let
    end

  encoded.each_slice(5).map(&:join).join(" ")
  end

  def decode(text)
    text = text.delete(' ')
    text.chars.map { |let|
      ALPHABET.include?(let) ? ALPHABET[CYPHER.index(let)] : let
    }.join
  end
end
