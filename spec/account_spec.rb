require 'account'

describe Account do
  subject(:account) { described_class.new }

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
end
