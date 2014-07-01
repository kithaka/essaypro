class ChangeDatetimeForUrgency < ActiveRecord::Migration
  def up
  	change_column :orders, :urgency, :string
  end

  def down
  end
end
