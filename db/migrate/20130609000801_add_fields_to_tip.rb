class AddFieldsToTip < ActiveRecord::Migration
  def change
    add_column :tips, :height, :string
    add_column :tips, :haircolor, :string
    add_column :tips, :race, :string
    add_column :tips, :gender, :string
    add_column :tips, :clothes, :string
  end
end
