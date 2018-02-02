class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= (1 + interest_rate)
  end

end

account = BankAccount.new(212121, 0.21)
puts "Initial balance is #{account.balance}."
account.deposit(15)
puts "After we deposit $15, the balance becomes #{account.balance}."
account.withdraw(30)
puts "After we withdraw $30, the balance becomes #{account.balance}."
account.gain_interest
puts "After we gain interest, the balance becomes #{account.balance}."
puts account.balance
