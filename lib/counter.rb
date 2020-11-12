require 'time'

class Counter
  attr_reader :count, :time

  def initialize
    @count = 0
  end

  def increment
    @count += 1
    get_time
  end

  def decrement
    @count -= 1
    get_time
  end

  def reset
    @count = 0
    get_time
  end

  def self.instance
    @counter ||= Counter.new
  end

  private

  def get_time
    @time = Time.now.strftime("%H:%M:%S")
  end
end
