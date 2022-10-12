class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations, id: :uuid do |t|
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
