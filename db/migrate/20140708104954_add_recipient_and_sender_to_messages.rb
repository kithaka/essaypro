class AddRecipientAndSenderToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :recipient, :string
    add_column :messages, :sender, :string
  end
end
