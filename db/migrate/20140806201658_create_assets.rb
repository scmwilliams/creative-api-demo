class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :asset_group, index: true
      t.integer :asset_type
      t.references :job, index: true
      t.string :screen
      t.string :background
      t.string :file
      t.boolean :flexible
      t.boolean :scalable

      t.timestamps
    end
  end
end
