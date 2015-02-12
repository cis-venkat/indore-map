class CreateBoundaries < ActiveRecord::Migration
  def change
    create_table :boundaries do |t|
      t.float :longitude
      t.float :latitude
      t.integer :location_id

      t.timestamps
    end
  end
end
