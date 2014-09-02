class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.integer :quantity
      t.decimal :amount
      t.string :status

      t.timestamps
    end
  end
end
