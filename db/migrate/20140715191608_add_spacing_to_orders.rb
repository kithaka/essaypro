class AddSpacingToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :spacing, :string
  end
end
