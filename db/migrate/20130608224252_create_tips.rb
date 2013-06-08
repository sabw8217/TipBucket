class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :location
      t.string :crime_type
      t.boolean :has_occurred
      t.text :description

      t.timestamps
    end
  end
end
