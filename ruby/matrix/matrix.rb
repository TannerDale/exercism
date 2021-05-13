=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(matrix)
    @matrix = deconstruct(matrix)
  end

  def deconstruct(matrix)
    matrix.split("\n").map do |row|
      row.split.map { |number| number.to_i }
    end
  end

  def rows
    @matrix.map do |row|
      row.map { |number| number }
    end
  end

  def columns
    rows.transpose
  end
end
