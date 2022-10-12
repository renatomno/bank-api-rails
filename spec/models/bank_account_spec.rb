require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  context 'in creation' do 
    let (:bank_account) { FactoryBot.create(:bank_account) }

    it 'should be successful' do
      expect(bank_account.id.present?).to eq true
      expect(bank_account.agency.present?).to eq true
      expect(bank_account.agency_verifier_digit.present?).to eq true
      expect(bank_account.account_number.present?).to eq true
      expect(bank_account.account_verifier_digit.present?).to eq true
      expect(bank_account.balance.present?).to eq true
      expect(bank_account.password.present?).to eq true
      expect(bank_account.user_id.present?).to eq true
      expect(bank_account.created_at.present?).to eq true
      expect(bank_account.updated_at.present?).to eq true
    end
    
  end
end
