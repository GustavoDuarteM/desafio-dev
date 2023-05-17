class CreateCnabs < ActiveRecord::Migration[7.0]
  def change
    create_table :cnabs do |t|
      t.integer :transaction_type
      t.datetime :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.string :hour
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
