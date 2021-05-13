=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

# 'Sure.' if you ask him a question.
# 'Whoa, chill out!' if you yell at him.
# 'Calm down, I know what I'm doing!' if you yell a question
# 'Fine. Be that way!' if you address him without actually saying
# anything.
# 'Whatever.' to anything else.

class Bob
  ANSWERS = {
    question: "Sure.",
    yell: "Whoa, chill out!",
    yell_question: "Calm down, I know what I'm doing!",
    nothing: "Fine. Be that way!",
    other: "Whatever."
  }

  def self.hey(statement)
    if statement.end_with?("?") && statement.chars.any? { |char| ('a'..'z').to_a.include?(char) }
      if statement.upcase! || statement.chars.any? { |char| char.to_i != 0 }
        ANSWERS[:question]
      else
        ANSWERS[:yell_question]
      end
    elsif statement.empty?
      ANSWERS[:nothing]
    elsif !statement.upcase! &&
      !statement.delete(", ").chars.all? { |char| char.to_i != 0 }
      ANSWERS[:yell]
    else
      ANSWERS[:other]
    end
  end
end
