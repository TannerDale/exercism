=begin
Write your code for the 'Queen Attack' exercise in this file. Make the tests in
`queen_attack_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/queen-attack` directory.
=end

class Queens

  def initialize(info)
    if info.any? { |key, value| value.any? { |coord| coord < 0 || coord >= 8 } }
      raise ArgumentError
    end
    @queens = info
  end

  def attack?
    white, black = @queens.values
    white[0] == black[0] || white[1] == black[1] ||
      (white[0] - black[0]).abs == (white[1] - black[1]).abs
  end

end
