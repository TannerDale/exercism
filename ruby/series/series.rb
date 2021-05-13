=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(slice_string)
    @slice_string = slice_string.chars
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @slice_string.length

    @slice_string.each_cons(slice_length).map(&:join)
  end
end
