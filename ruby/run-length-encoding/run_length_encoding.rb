=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode(input)
    return input if input.empty?

    string = input.chars

    groups = string.chunk_while do |i, x|
      i == x
    end

    groups.map { |chunk|
      chunk.size == 1 ? chunk.first : "#{chunk.size}#{chunk.first}"
    }.join
  end

  def self.decode(string)
    groups = string.scan(/(\d+)?([^\d])/)
    groups.reduce('') do |answer, group|
      answer + group[1] * (group[0]&.to_i || 1)
    end
  end
end
