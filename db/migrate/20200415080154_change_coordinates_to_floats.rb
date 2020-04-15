class ChangeCoordinatesToFloats < ActiveRecord::Migration[6.0]
  def change
    change_column :stores, :latitude, :float
    change_column :stores, :longitude, :float
  end
end
