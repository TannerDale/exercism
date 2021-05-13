=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end
class ResistorColorTrio
  COLORS = %w(black brown red orange yellow green blue violet grey white)

  def initialize(colors)
    @colors = colors
    @main_values = colors[..1]
    @zeros = COLORS.index(colors.last)
  end

  def label
    raise ArgumentError unless @colors.all? { |color| COLORS.include?(color) }

    @ohms = @main_values.map { |color| COLORS.index(color) }.join.to_i
    @ohms *= (10**@zeros)

    format_output
  end

  def format_output
    if @ohms >= 1_000
      "Resistor value: #{@ohms / 1_000} kiloohms"
    else
      "Resistor value: #{@ohms} ohms"
    end
  end
end
