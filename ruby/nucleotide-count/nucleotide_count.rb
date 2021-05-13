=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide
  LETTERS = %w(A T C G)
  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError unless dna.chars.all? do |letter|
      LETTERS.include?(letter)
    end

    Nucleotide.new(dna)
  end

  def count(letter)
    @dna.count(letter)
  end

  def histogram
    LETTERS.map { |letter| [letter, count(letter)] }.to_h
  end
end
