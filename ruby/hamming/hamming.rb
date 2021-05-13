=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    strand1 = strand1.split('')
    strand2 = strand2.split('')

    strand1.each_with_index.count do |base, index|
      base != strand2[index]
    end

  end
end
