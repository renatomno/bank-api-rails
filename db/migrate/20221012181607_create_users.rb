class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.integer :cpf
      t.string :email
      t.date :birthdate

      t.timestamps
    end
  end
end
