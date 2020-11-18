class AddCoordinatesToToothbrushes < ActiveRecord::Migration[6.0]
  def change
    add_column :toothbrushes, :latitude, :float
    add_column :toothbrushes, :longitude, :float
  end
end
