class ChangeUserCpfType < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :cpf, :string)
  end
end
