class AddGeocodedFlagToTip < ActiveRecord::Migration
  def change
    add_column :tips, :geocoded, :boolean
  end
end
