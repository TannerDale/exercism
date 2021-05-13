=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL
  def self.transform(old)
    new = old.flat_map { |points, letters|
      letters.map { |letter| [letter.downcase, points] }
    }
    new.sort_by { |letter_points| letter_points[0] }.to_h
  end
end
