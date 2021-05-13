=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  def self.square(square)
    raise ArgumentError if square < 1 || square > 64
    2**(square - 1)
  end

  def self.total
    (0..63).sum { |square| 2**square }
  end
end
