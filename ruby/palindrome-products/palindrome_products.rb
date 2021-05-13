=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end

class Palindromes
  def initialize(max_factor:, min_factor: 0)
    @max_factor = max_factor
    @min_factor = min_factor
    @palindromes = []
  end

  def generate
    new_palindrome = Struct.new(:value, :factors)
    (@min_factor..@max_factor).each do |num1|
      (num1..@max_factor).each do |num2|
        product = num1 * num2
        if product.digits == product.digits.reverse
          already_found = @palindromes.select { |palindrome|
            palindrome.value == product
          }.first

          if already_found
            already_found.factors << [num1, num2]
          else
            @palindromes << new_palindrome.new(product, [[num1, num2]])
          end
        end
      end
    end
  end


  def largest
    @palindromes.max_by { |palindrome| palindrome.value }
  end

  def smallest
    @palindromes.min_by { |palindrome| palindrome.value }
  end
end
