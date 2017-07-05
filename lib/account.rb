class Account

  attr_reader :balance
  attr_writer :balance
  attr_reader :date
  attr_reader :credit
  attr_reader :debit

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

  def print_statement
    print 'date || credit || debit || balance'
    @transactions.reverse.each { |transaction|
      if transaction[:credit]
        print %Q(
#{transaction[:date].strftime('%d/%m/%Y')} || #{'%.2f' % transaction[:credit].to_f} || || #{'%.2f' % transaction[:balance].to_f})
      else
        print %Q(
#{transaction[:date].strftime('%d/%m/%Y')} || || #{'%.2f' % transaction[:debit].to_f} || #{'%.2f' % transaction[:balance].to_f})
      end
    }
  end
end
