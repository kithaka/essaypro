class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :complete
      t.string :revision
      t.integer :order_id

      t.timestamps
    end
  end
end
