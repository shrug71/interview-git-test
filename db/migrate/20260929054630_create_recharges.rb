class CreateRecharges < ActiveRecord::Migration[8.1]
  def change
    create_table :recharges do |t|
      t.string :mobile_no, null: false
      t.string :operator_name, null: false
      t.string :state, null: false
      t.decimal :amount, null: false
      t.string :status, null: false, default: "pending"
      t.timestamps
    end
  end
end