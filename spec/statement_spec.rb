require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe "#headers" do
    it "prints headers to statement" do
      expect(statement.headers).to eq "date || credit || debit || balance"
    end
  end
end 
