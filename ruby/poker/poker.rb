=begin
Write your code for the 'Poker' exercise in this file. Make the tests in
`poker_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/poker` directory.
=end

class Poker
  @@score_order = %w( HC 2P 3P S F FH 4P SF RF)
  def initialize(hands)
    @hands = hands
  end

  def best_hand
    hand_scores = []
    @hands.each do |hand|
      numbers = []
      suites = []
      hand.each do |card|
        number, suite = card.chars
        case number
        when "J"
          number = 10
        when "Q"
          number = 11
        when "K"
          number = 12
        else
          number = number.to_i
        end
        numbers << number
        suites << suite
      end

      numbers.sort_by! { |value| numbers.count(value) || element }
      suites.sort_by! { |value| suites.count(value) }


    end
  end

  def get_score_by_numbers(numbers)
    case numbers.length
    when 5
      "HC"
    when 4
      "2P"
    when 3
      "3P"
    when 2
      "4P"
    end
  end

  def get_score_by_suites(suites)
    suites.length == 1 ? "F" : nil
  end

end
