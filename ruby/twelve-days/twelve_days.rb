=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  GIFTS = {
    first: "a Partridge in a Pear Tree.",
    second: "two Turtle Doves, ",
    third: "three French Hens, ",
    fourth: "four Calling Birds, ",
    fifth: "five Gold Rings, ",
    sixth: "six Geese-a-Laying, ",
    seventh: "seven Swans-a-Swimming, ",
    eighth: "eight Maids-a-Milking, ",
    ninth: "nine Ladies Dancing, ",
    tenth: "ten Lords-a-Leaping, ",
    eleventh: "eleven Pipers Piping, ",
    twelfth: "twelve Drummers Drumming, "
  }

  def self.song
    start = "On the "
    gave = " day of Christmas my true love gave to me: "
    all_gifts = []
    song = GIFTS.each.map { |day, gift|
      if day == :first
        start + day.to_s + gave + gift + "\n"
      else
        all_gifts.unshift(gift)
        start + day.to_s + gave + all_gifts.join + "and #{GIFTS[:first]}\n"
      end
    }.join("\n")
  end
end
