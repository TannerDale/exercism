=begin
Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
`perfect_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/perfect-numbers` directory.
=end

class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number <= 0

    factor_sum = (1..(number / 2)).select { |potential|
      number % potential == 0
    }.sum

    if factor_sum == number
      "perfect"
    elsif factor_sum < number
      'deficient'
    else
      'abundant'
    end
  end
end
