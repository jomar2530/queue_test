require 'rspec'

class SingleVarQ
  def initialize(start)
      @q = start
  end

  def queue
      p @q
  end

  def enqueue num_to_queue
      raise TypeError.new("Invalid integer") if num_to_queue < 1 || num_to_queue.digits.length > 1

      arr = []
      @q = arr.unshift(num_to_queue, @q).join().to_i
  end

  def dequeue
      list = Math.log10(@q).floor.downto(0).map { |i| (@q / 10**i) % 10 }
      list.pop

      @q = list.join().to_i
  end
end