class AddDeadlineToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :deadline, :integer
  end
end
