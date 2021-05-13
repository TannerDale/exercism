# =begin
# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.
# =end

class Luhn
  def self.valid?(card_number)
    number = card_number.delete(' ')

    if number.length <= 1 || number.match?(/\D+/)
      return false
    end

    number = number.to_i.digits

    digit_sum = number.each_with_index.sum do |digit, index|
      if index.odd?
        digit *= 2
        digit >= 9 ? digit - 9 : digit
      else
        digit
      end
    end

    digit_sum % 10 == 0 || digit_sum == 0
  end

end
