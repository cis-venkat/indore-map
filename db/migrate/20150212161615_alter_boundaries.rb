class AlterBoundaries < ActiveRecord::Migration
  def change
  	change_column :boundaries, :latitude, :float
  	change_column :boundaries, :longitude, :float
  end
end
