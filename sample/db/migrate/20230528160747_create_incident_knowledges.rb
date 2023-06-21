class CreateIncidentKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :incident_knowledges do |t|
      t.integer :knowledge_id
      t.integer :incident_id

      t.timestamps
    end
  end
end
