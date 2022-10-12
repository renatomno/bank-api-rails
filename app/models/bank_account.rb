class BankAccount < ApplicationRecord
  belongs_to :user
  has_many :operation
end
