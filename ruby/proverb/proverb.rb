=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end

class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @qualifier = qualifier
  end

  def to_s
    create_body + create_final_line
  end

  private

  def create_body
    @items[...-1].each_with_index.map { |item, i|
      "For want of a #{item} the #{@items[i + 1]} was lost.\n"
    }.join
  end

  def create_final_line
    end_item = @qualifier ? "#{@qualifier} #{@items.first}" : @items.first
    "And all for the want of a #{end_item}."
  end
end
