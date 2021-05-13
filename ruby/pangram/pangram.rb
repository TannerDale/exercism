=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram
  @@letters = *("a".."z")

  def self.pangram?(sentence)
    return false if sentence.length < 26

    @@letters.all? { |letter| sentence.downcase.include?(letter) }
  end

end
