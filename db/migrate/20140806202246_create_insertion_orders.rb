class CreateInsertionOrders < ActiveRecord::Migration
  def change
    create_table :insertion_orders do |t|
      t.references :brand, index: true
      t.string :name
      t.string :io_number
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
