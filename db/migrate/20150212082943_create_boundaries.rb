class CreateBoundaries < ActiveRecord::Migration
  def change
    create_table :boundaries do |t|
      t.decimal :longitude, precision: 15, scale: 30
      t.decimal :latitude, precision: 15, scale: 30
      t.integer :location_id

      t.timestamps
    end
  end
end
