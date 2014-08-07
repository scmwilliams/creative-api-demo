class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :progress
      t.boolean :failed
      t.string :message

      t.timestamps
    end
  end
end
