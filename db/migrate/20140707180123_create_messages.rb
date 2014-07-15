class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.string :subject
      t.integer :order_id

      t.timestamps
    end
  end
end
