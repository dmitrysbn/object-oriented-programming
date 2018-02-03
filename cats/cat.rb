class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  def eats_at
    if @meal_time == 0
      "12 AM"
    elsif @meal_time < 12
      "#{@meal_time} AM"
    else
      "#{@meal_time} PM"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at " + eats_at + "."
  end

end

cat1 = Cat.new("Mikka", "salmon", 6)
cat2 = Cat.new("Eddie", "tuna", 0)

cat1.meow
cat2.meow
