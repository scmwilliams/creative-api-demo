class CreateCta < ActiveRecord::Migration
  def change
    create_table :cta do |t|
      t.string :name
      t.string :url
      t.boolean :new_window
      t.boolean :full_screen
      t.references :ad_unit, index: true
      t.integer :pixel_width
      t.integer :pixel_height
      t.integer :right_offset
      t.integer :top_offset

      t.timestamps
    end
  end
end
