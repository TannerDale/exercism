=begin
Write your code for the 'Circular Buffer' exercise in this file. Make the tests in
`circular_buffer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/circular-buffer` directory.
=end
class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(buffer_count)
    @buff_count = buffer_count
    @buffer = []
  end

  def read
    raise BufferEmptyException if empty?

    @buffer.shift
  end

  def write(data)
    raise BufferFullException if full?

    @buffer << data
  end

  def write!(data)
    @buffer.shift if full?
    @buffer << data
  end

  def clear
    @buffer.clear
  end

  def empty?
    @buffer.empty?
  end

  def full?
    @buffer.length >= @buff_count
  end
end
