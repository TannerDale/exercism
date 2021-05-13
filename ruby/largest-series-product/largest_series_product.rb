=begin
Write your code for the 'Largest Series Product' exercise in this file. Make the tests in
`largest_series_product_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/largest-series-product` directory.
=end
class Series
  def initialize(series)
    @series = validate_series_chars(series)
  end

  def largest_product(len)
    return 1 if len == 0
    raise ArgumentError if @series.empty? || len > @series.length

    @series.each_cons(len).map { |subset| subset.reduce(&:*) }.max
  end

  private

  def validate_series_chars(series)
    series.chars.map do |char|
      raise ArgumentError if ("a".."z").include?(char)

      char.to_i
    end
  end
end
