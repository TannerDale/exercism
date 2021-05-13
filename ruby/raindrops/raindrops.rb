=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(input_number)
    vocab = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }
    raindrop_speak = ''
    vocab.each do |number, word|
      raindrop_speak += word if input_number % number == 0
    end

    raindrop_speak.empty? ? input_number.to_s : raindrop_speak
  end
end
