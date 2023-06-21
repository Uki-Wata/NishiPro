class CreateIncidentCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :incident_categories do |t|
      t.integer :incident_id
      t.integer :category_id

      t.timestamps
    end
  end
end
