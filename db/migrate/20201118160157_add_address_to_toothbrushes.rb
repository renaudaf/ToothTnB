class AddAddressToToothbrushes < ActiveRecord::Migration[6.0]
  def change
    add_column :toothbrushes, :address, :string
  end
end
