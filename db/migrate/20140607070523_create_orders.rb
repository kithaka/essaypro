class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :topic
      t.string :subject
      t.string :documenttype
      t.integer :pages
      t.datetime :urgency
      t.integer :references
      t.string :citation
      t.string :level
      t.string :language
      t.string :instructions

      t.timestamps
    end
  end
end
