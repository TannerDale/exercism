=begin
Write your code for the 'Rail Fence Cipher' exercise in this file. Make the tests in
`rail_fence_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rail-fence-cipher` directory.
=end

module RailFenceCipher
  extend self

  def encode(message, rail_count)
    return message if message.empty? || rail_count >= message.length

    seperated = message.chars
    rails = Hash.new { |hash, key| hash[key] = [] }

    down = false
    rail = 1
    seperated.each do |letter|
      down = !down if rail == 1 || rail == rail_count
      rails[rail] << letter
      down ? rail += 1 : rail -= 1
    end

    rails.values.flatten.join
  end

  def decode(message, rail_count)
    return message if message.empty? || rail_count == 1

    seperated = message.chars
    rails = Hash.new { |hash, key| hash[key] = [] }

    down = false
    rail = 1
    seperated.each do |letter|
      down = !down if rail == 1 || rail == rail_count
      rails[rail] << true
      down ? rail += 1 : rail -= 1
    end

    rail_length = rails.values.map(&:count)

    decoded = rail_length.map do |rail|
      seperated.slice!(0...rail)
    end

    down = false
    rail = 0
    answer = ""
    for i in (1..message.length).each do
      down = !down if rail == 0 || rail == (rail_count - 1)
      answer += decoded[rail].shift
      down ? rail += 1 : rail -= 1
    end
    answer
  end
end
