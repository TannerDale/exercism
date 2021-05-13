=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime
  def self.nth(desired_prime)
    raise ArgumentError if desired_prime <= 0

    primes = []
    number = 2
    while primes.length < desired_prime
      primes << number if primes.none? { |prime| number % prime == 0 }
      number += 1
    end
    primes.last
  end
end
