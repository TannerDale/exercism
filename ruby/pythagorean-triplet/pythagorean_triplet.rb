=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class Triplet
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    @a + @b + @c
  end

  def product
    @a * @b * @c
  end

  def pythagorean?
    @a**2 + @b**2 == @c**2
  end

  def self.where(sum: nil, min_factor: 1, max_factor: 1)
    (min_factor...max_factor).to_a.flat_map { |a|
      (a...max_factor).to_a.flat_map do |b|
        c = (a**2 + b**2)**0.5
        if sum
          Triplet.new(a, b, c) if c == c.to_i && [a, b, c].sum == sum
        else
          Triplet.new(a, b, c) if c == c.to_i
        end
      end
    }.compact
  end
end
