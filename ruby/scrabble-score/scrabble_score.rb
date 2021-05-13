=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  LETTER_VALUES = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  SCORE = ->(word) {
    return 0 if not word
    word = word.upcase.chars
    LETTER_VALUES.each.sum do |points, letters|
      points * letters.sum { |letter| word.count(letter) }
    end
  }

  attr_reader :score

  def initialize(word)
    @score = SCORE.call(word)
  end

  def self.score(word)
    SCORE.call(word)
  end

end
