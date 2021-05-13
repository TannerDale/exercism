=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words_to_compare = @phrase.scan(/\w+'?\w+|\d+/).map { |word| word.downcase }
    words_to_compare.map { |word|
      [word, words_to_compare.count { |i| i == word }]
    }.to_h
  end
end
