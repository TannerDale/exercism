class Matrix
  attr_reader :rows, :columns
  def initialize(matrix)
    @matrix = matrix
    @rows = format_rows
    @columns = @rows.transpose
  end

  def saddle_points
    column_mins = find_column_mins

    rows.each_with_index.map { |row_values, row|
      column = column_mins.find_index(row_values.max)
      [row, column] if column
    }.compact
  end

  private

  def format_rows
    @matrix.split("\n").map do |row|
      row.split.map(&:to_i)
    end
  end

  def find_column_mins
    columns.map(&:min)
  end
end
