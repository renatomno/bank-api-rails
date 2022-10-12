class Operation < ApplicationRecord
  belongs_to :bank_account, foreign_key: 'bank_accounts_id'
  OPERATION_TYPE = ['deposit', 'withdraw', 'transfer'].freeze
end
