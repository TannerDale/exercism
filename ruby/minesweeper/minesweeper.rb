=begin
Write your code for the 'Minesweeper' exercise in this file. Make the tests in
`minesweeper_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/minesweeper` directory.
=end

class Board
  def self.transform(board)
    board.map!(&:chars)

    validate(board, [board.first, board.last])

    count_adjacent_mines(board)
  end

  def self.count_adjacent_mines(board)
    board.each_with_index.map do |row, row_id|
      row.each_with_index.map { |item, column_id|
        if %w(+ - | *).include?(item)
          item
        else
          adjacent = [
            row[column_id + 1],
            row[column_id - 1],
            board[row_id + 1][column_id],
            board[row_id - 1][column_id],
            board[row_id + 1][column_id + 1],
            board[row_id + 1][column_id - 1],
            board[row_id - 1][column_id + 1],
            board[row_id - 1][column_id - 1]
          ]
          mine_count = adjacent.count("*")

          mine_count == 0 ? ' ' : mine_count.to_s
        end
      }.join
    end
  end

  def self.validate(board, headers)
    raise ArgumentError unless headers.all? do |row|
      row.uniq == %w(+ -)
    end
    raise ArgumentError unless board.all? do |row|
      row.length == board.first.length
    end
    raise ArgumentError unless board[1...-1].all? do |row|
      row.all? { |item| [' ', '*', '|'].include?(item) }
    end
  end
end
