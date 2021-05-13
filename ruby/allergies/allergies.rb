=begin
Write your code for the 'Allergies' exercise in this file. Make the tests in
`allergies_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/allergies` directory.
=end

class Allergies
  ALLERGEN_LIST = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
  ALLERGENS = ALLERGEN_LIST.each_with_index.map { |al, i| [al, 2**i] }.to_h

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergen)
    variable_score = @score
    variable_score -= ALLERGENS[allergen]

    included = ALLERGENS.values.include?(variable_score)

    included || variable_score.zero?
  end

  def list
    allergic_to = ALLERGEN_LIST.select { |allergen| allergic_to?(allergen) }
    ALLERGENS[allergic_to.last]  == @score ? [allergic_to.last] : allergic_to
  end
end
