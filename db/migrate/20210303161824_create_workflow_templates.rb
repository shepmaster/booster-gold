class CreateWorkflowTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :workflow_templates do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
