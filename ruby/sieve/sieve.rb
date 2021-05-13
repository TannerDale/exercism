=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    return [] if @max <= 1

    primes = Hash.new
    range = *(2..@max)
    range.each { |number| primes[number] = true }

    range[..@max**0.5].each do |number|
      primes.keys.each do |key|
        primes[key] = false if key % number == 0 && key != number
      end
    end

    primes.map { |number, bool| number if bool }.compact
  end
end
