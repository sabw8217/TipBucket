class AddOccurredAtToTip < ActiveRecord::Migration
  def change
    add_column :tips, :occurred_at, :datetime
  end
end
