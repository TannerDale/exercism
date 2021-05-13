=begin
Write your code for the 'Bowling' exercise in this file. Make the tests in
`bowling_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bowling` directory.
=end

class Game
  def initialize
    @points = 0
    @previous_frame = []
  end

  def roll(pins)
    if @previous_frame.sum != 10
      
    end
  end

  def score
    @throws.each_with_index.map do |throw, i|
      if i > 0 && i.even?

    end
  end
end
