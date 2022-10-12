require 'rails_helper'

RSpec.describe User, type: :model do
  context 'in creation' do 
    let (:user) { FactoryBot.create(:user) }

    it 'should be successful' do
      expect(user.id.present?).to eq true
      expect(user.name.present?).to eq true
      expect(user.cpf.present?).to eq true
      expect(user.email.present?).to eq true
      expect(user.birthdate.present?).to eq true
      expect(user.created_at.present?).to eq true
      expect(user.updated_at.present?).to eq true
    end

    it 'should fail if there is no name' do 
      expect {User.create!(cpf: '82846876459',
                    email: "hyde_jaqueline@quitzon.co",
                    birthdate: "1998-09-30")}
      .to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'should fail if there is no cpf' do 
      expect {User.create!(email: "hyde_jaqueline@quitzon.co",
                    name: "Jaqueline Hyde",
                    birthdate: "1998-09-30")}
      .to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'should fail if there is no email' do 
      expect {User.create!(cpf: '82846876459',
                    name: "Jaqueline Hyde",
                    birthdate: "1998-09-30")}
      .to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'should fail if there is no birthdate' do 
      expect {User.create!(cpf: '82846876459',
                    name: "Jaqueline Hyde",
                    email: "hyde_jaqueline@quitzon.co")}
      .to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
