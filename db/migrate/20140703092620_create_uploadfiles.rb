class CreateUploadfiles < ActiveRecord::Migration
  def change
    create_table :uploadfiles do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
