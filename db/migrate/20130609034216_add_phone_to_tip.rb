class AddPhoneToTip < ActiveRecord::Migration
  def change
    add_column :tips, :phone, :string
  end
end
