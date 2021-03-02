class RecreateClients < ActiveRecord::Migration[6.1]
  def change
    drop_table :clients do |t|
      t.string :name
    end

    create_table :clients do |t|
      t.string :company_name
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
