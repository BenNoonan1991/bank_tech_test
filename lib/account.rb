class Account

  attr_reader :balance
  attr_writer :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(amount)
    self.balance += amount
    @transactions.push({date: Time.new, credit: amount, balance: balance})
  end

  def debit(amount)
    self.balance -= amount
    @transactions.push({date: Time.new, debit: amount, balance: balance})
  end

  def bank_statement
    @transactions
  end

end
