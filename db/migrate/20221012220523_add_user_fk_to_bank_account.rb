class AddUserFkToBankAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :bank_accounts, :user, foreign_key: true, type: :uuid
  end
end
