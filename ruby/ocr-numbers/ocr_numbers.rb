=begin
Write your code for the 'Ocr Numbers' exercise in this file. Make the tests in
`ocr_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/ocr-numbers` directory.
=end
class OcrNumbers
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

  def self.convert(input)
    seperated_numbers = get_all_numbers(input)

    if seperated_numbers.first.length < 5
      seperated_numbers.map { |number| decipher_number(number) }.join
    else
      convert_columns(seperated_numbers)
    end
  end

  def self.get_all_numbers(input)
    rows = input.split("\n")

    raise ArgumentError if rows.any? { |row| row.length % 3 != 0 }
    raise ArgumentError if rows.length % 4 != 0

    seperate_numbers(rows)
  end

  def self.seperate_numbers(rows)
    rows.map { |line|
      line.chars.each_slice(3).map(&:join)
    }.transpose
  end

  def self.convert_columns(seperated_numbers)
    columns = seperated_numbers.map do |number|
      number.each_slice(4).map { |number| decipher_number(number) }
    end

    reformat_columns(columns)
  end

  def self.decipher_number(number)
    possible = number[..-2].each_with_index.map do |line, i|
      NUMBERS_USING_INDEX[i][line]
    end
    possible = possible.reduce(&:&) rescue "?"
    possible.empty? ? "?" : possible
  end

  def self.reformat_columns(columns)
    columns.first.each_with_index.map { |numbers, i|
      numbers.map { |number|
        [number] + columns[1..].map { |column| column[i] }
      }.join
    }.join(",")
  end
end
