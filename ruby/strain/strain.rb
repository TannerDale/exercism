=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end

class Array
  def keep(&block)
    select &block
  end

  def discard(&block)
    delete_if &block
  end

end