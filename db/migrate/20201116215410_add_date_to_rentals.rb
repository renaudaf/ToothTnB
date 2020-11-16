class AddDateToRentals < ActiveRecord::Migration[6.0]
  def change
    add_column :rentals, :date, :date
  end
end
