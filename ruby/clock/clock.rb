=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
# sprintf '%02d',
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour, @minute = get_time(hour, minute)
  end

  def to_s
    hour = sprintf '%02d', @hour
    minute = sprintf '%02d', @minute
    "#{hour}:#{minute}"
  end

  def get_time(hour, minute)
    hour += 1 * (minute / 60)
    minute %= 60
    hour = (24 + hour) % 24
    [hour, minute]
  end

  def +(time)
    Clock.new(hour: @hour + time.hour, minute: @minute + time.minute)
  end

  def -(time)
    Clock.new(hour: @hour - time.hour, minute: @minute - time.minute)
  end

  def ==(time)
    @hour == time.hour && @minute == time.minute
  end
  
end
