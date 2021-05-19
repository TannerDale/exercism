=begin
Write your code for the 'Ocr Numbers' exercise in this file. Make the tests in
`ocr_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/ocr-numbers` directory.
=end
module OcrNumbers
  extend self

  NUMBERS_USING_INDEX = {
    0 => {
      "   " => [1, 4],
      " _ " => [0, 2, 3, 5, 6, 7, 8, 9]
    },
    1 => {
      "  |" => [1, 7],
      " _|" => [2, 3],
      "|_|" => [4, 8, 9],
      "|_ " => [5, 6],
      "| |" => [0]
    },
    2 => {
      "  |" => [1, 4, 7],
      " _|" => [3, 5, 9],
      "|_|" => [0, 6, 8],
      "|_ " => [2]
    }
  }

  def convert(input)
    rows = input.split("\n")

    raise ArgumentError if rows.length % 4 != 0
    raise ArgumentError if rows.any? { |row| row.length % 3 != 0 }

    rows.each_slice(4).map { |row_of_nums|
      seperate_numbers(row_of_nums).map { |num|
        decipher_number(num)
      }.join
    }.join(",")
  end

  def seperate_numbers(rows)
    rows.map { |line|
      line.chars.each_slice(3).map(&:join)
    }.transpose
  end

  def decipher_number(number)
    possible = number[..-2].each_with_index.map do |line, i|
      NUMBERS_USING_INDEX[i][line]
    end
    possible = possible.reduce(&:&) rescue "?"
    possible.empty? ? "?" : possible
  end

end
