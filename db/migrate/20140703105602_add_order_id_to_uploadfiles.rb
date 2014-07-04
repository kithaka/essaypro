class AddOrderIdToUploadfiles < ActiveRecord::Migration
  def change
    add_column :uploadfiles, :order_id, :integer
  end
end
