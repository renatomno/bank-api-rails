class User < ApplicationRecord
  validates :name, :cpf, :email, :birthdate, presence: true
  validates :cpf, length: { is: 11 }

  has_one :bank_account
end
