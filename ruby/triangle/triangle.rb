=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false unless valid?

    @sides.uniq.length == 1
  end

  def isosceles?
    return false unless valid?

    @sides.uniq.length == 2 || equilateral?
  end

  def scalene?
    return false unless valid?

    @sides.uniq == @sides
  end

  def valid?
    @sides.sort.reverse.reduce(&:-) < 0
  end
end
