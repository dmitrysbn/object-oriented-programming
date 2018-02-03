class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  ### INSTANCE METHODS ###

  def quota
    50 + @experience/2
  end

  def deliver(start_address, end_address)
    length = (start_address - end_address).abs + 1

    if length < quota
      @earnings += length * 0.25 - 2
      @experience += length
      length * 0.25 - 2
    else
      @earnings += quota * 0.25 + (length - quota) * 0.50
      @experience += length
      quota * 0.25 + (length - quota) * 0.50
    end
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

end

peter = Paperboy.new("Peter")

puts peter.quota
puts peter.deliver(160, 101)
# puts peter.deliver(160, 101)
puts peter.earnings
peter.report

puts peter.quota
puts peter.deliver(1, 75)
puts peter.earnings
peter.report
