=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  def initialize(word)
    @original = word.downcase
    @chars = @original.chars
  end

  def match(words)
    to_compare = words.map { |word|
      [word, word.downcase.chars]
    }.to_h

    to_compare.delete_if do |key, value|
      to_compare.values.count(value) != 1
    end

    to_compare.keep_if { |word, compare_chars|
      @chars != compare_chars && @chars.sort == compare_chars.sort
    }.keys
  end
end
