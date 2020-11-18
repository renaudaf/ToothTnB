class AddUserToToothbrushes < ActiveRecord::Migration[6.0]
  def change
    add_reference :toothbrushes, :user, null: false, foreign_key: true
  end
end
