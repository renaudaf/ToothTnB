class CreateToothbrushTags < ActiveRecord::Migration[6.0]
  def change
    create_table :toothbrush_tags do |t|
      t.references :toothbrush, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
