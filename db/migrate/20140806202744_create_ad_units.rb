class CreateAdUnits < ActiveRecord::Migration
  def change
    create_table :ad_units do |t|
      t.boolean :no_api
      t.boolean :approved
      t.string :name
      t.references :asset_group, index: true
      t.string :type
      t.integer :insight
      t.string :screen
      t.references :asset, index: true
      t.string :pixel_tracker
      t.references :cta, index: true

      t.timestamps
    end
  end
end
