class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :name
      t.integer :count
      t.timestamps
    end
  end
end
