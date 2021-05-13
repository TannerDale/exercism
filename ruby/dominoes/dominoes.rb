=begin
Write your code for the 'Dominoes' exercise in this file. Make the tests in
`dominoes_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dominoes` directory.
=end
class Dominoes
  def self.chain?(doms)
    return true if doms.empty?

    as_given = check_permutations(doms)
    if as_given
      as_given
    else
      self.reversed(doms)
    end
  end

  def self.check_permutations(doms)
    doms.permutation(doms.length).any? do |combo|
      combo.each_with_index.all? do |dom, i|
        if i != combo.length - 1
          dom.last == combo[i + 1].first
        else
          combo.first.first == dom.last
        end
      end
    end
  end

  def self.reversed(doms)
    reversed = doms.map(&:reverse)
    (0...doms.length).to_a.any? do |i|
      check = doms.map do |dom|
        if doms.index(dom) == i
          reversed[i]
        else
          dom
        end
      end

      self.check_permutations(check)
    end
  end
end
