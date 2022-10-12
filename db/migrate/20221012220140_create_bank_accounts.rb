class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts, id: :uuid do |t|
      t.string :agency
      t.string :agency_verifier_digit
      t.string :account_number
      t.string :account_verifier_digit
      t.float :balance
      t.string :password

      t.timestamps
    end
  end
end
