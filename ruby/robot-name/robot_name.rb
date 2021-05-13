=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end
class Robot
  @@chosen_names = []
  def initialize
    @name = generate_name
  end

  def generate_name
    Kernel.srand(number = Random.new_seed)
    letters = *("A".."Z")
    letters.sample(2).join + rand(100..999).to_s
  end

  def self.forget
  end

  def reset
    @name = generate_name
  end

  def name
    @name
  end
end
