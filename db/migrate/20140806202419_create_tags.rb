class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.boolean :no_api
      t.references :insertion_order, index: true
      t.references :ad_unit, index: true
      t.integer :impression_goal
      t.references :partner, index: true
      t.boolean :easy_touch

      t.timestamps
    end
  end
end
