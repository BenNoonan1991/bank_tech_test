require 'account'

describe Account do
  subject(:account) { described_class.new }
  #let(:date) { Time.now.strftime "%d/%m/%Y" }

  describe "#initialize" do
    it "starts with a balance of 0" do
      expect(account.balance).to eq 0
    end
  end

  describe "#credit" do
    it "deposits money into the account" do
      account.credit(100)
      expect(account.balance).to eq 100
    end
  end

  describe "#debit" do
    it "withdraws money fom the account" do
      account.credit(100)
      account.debit(50)
      expect(account.balance).to eq 50
    end
  end

  describe "#print_statement" do
    it "prints out the statement in correct format" do
      account.credit(100)
      account.debit(10)
      expect{subject.print_statement}.to output(
'date || credit || debit || balance
05/07/2017 || || 10.00 || 90.00
05/07/2017 || 100.00 || || 100.00').to_stdout
    end
  end
end
