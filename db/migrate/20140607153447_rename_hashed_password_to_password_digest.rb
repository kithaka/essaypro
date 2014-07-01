class RenameHashedPasswordToPasswordDigest < ActiveRecord::Migration
  def up
  	rename_column :customers, :hashed_password, :password_digest
  end

  def down
  end
end
