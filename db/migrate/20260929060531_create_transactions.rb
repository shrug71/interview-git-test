class CreateTransactions < ActiveRecord::Migration[8.1]
  def change
    create_table :transactions do |t|
      t.references :recharge, null: false, foreign_key: true
      t.string :transaction_id, null: false
      t.decimal :amount, null: false
      t.string :status, null: false
      t.timestamps
    end

    add_index :transactions, :transaction_id, unique: true
  end
end