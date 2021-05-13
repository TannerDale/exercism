=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
  def initialize(*args)
    @multiples = args
  end

  def to(max)
    return 0 if @multiples.include?(0)

    (1...max).sum do |number|
      @multiples.any? { |multiple| number % multiple == 0 } ? number : 0
    end
  end
end
