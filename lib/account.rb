class Account

  attr_reader :balance
  attr_writer :balance

  def initialize
    @balance = 0
  end

  def credit(amount)
    self.balance += amount
  end

  def debit(amount)
    self.balance -= amount
  end 

end
