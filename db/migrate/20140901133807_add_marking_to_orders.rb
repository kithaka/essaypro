class AddMarkingToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :marking, :string
  end
end
