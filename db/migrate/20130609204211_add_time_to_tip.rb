class AddTimeToTip < ActiveRecord::Migration
  def change
    add_column :tips, :when_happened, :string
  end
end
