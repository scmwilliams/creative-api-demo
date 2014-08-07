class CreateAssetGroups < ActiveRecord::Migration
  def change
    create_table :asset_groups do |t|
      t.references :brand, index: true
      t.string :name

      t.timestamps
    end
  end
end
