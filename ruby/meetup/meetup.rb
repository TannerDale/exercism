=begin
Write your code for the 'Meetup' exercise in this file. Make the tests in
`meetup_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/meetup` directory.
=end

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, day_number)
    info = Date.ordinal(@month, @year)
  end

end
