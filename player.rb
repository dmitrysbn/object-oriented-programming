class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    @gold_coins
  end

  def health_points
    @health_points
  end

  def lives
    @lives
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage

    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end

    if @lives == 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

viking = Player.new
puts viking.gold_coins
puts viking.health_points
puts viking.lives

20.times do
  viking.collect_treasure
end

puts viking.gold_coins


# viking.do_battle(5)
# viking.do_battle(5)
#
# viking.do_battle(5)
# viking.do_battle(5)
#
# viking.do_battle(5)
# viking.do_battle(5)
#
# viking.do_battle(5)
# viking.do_battle(5)
#
# viking.do_battle(5)
# viking.do_battle(5)
puts viking.lives
viking.level_up
puts viking.lives
