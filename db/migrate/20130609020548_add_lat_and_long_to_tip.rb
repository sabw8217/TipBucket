class AddLatAndLongToTip < ActiveRecord::Migration
  def change
    add_column :tips, :lat, :decimal, :precision => 10, :scale => 6
    add_column :tips, :long, :decimal, :precision => 10, :scale => 6
  end
end
