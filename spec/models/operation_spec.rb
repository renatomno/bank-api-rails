require 'rails_helper'

RSpec.describe Operation, type: :model do
  context 'in creation' do 
    let (:operation) { FactoryBot.create(:operation) }

    it 'should be successful' do
      expect(operation.id.present?).to eq true
      expect(operation.amount.present?).to eq true
      expect(operation.type.present?).to eq true
      expect(operation.bank_accounts_id.present?).to eq true
      expect(operation.created_at.present?).to eq true
      expect(operation.updated_at.present?).to eq true
    end
    
  end
end
