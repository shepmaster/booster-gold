class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.datetime :start_at
      t.datetime :end_at
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
