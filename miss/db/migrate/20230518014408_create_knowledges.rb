class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string :word
      t.text :memo
      t.text :url
      t.integer :sakuin_id

      t.timestamps
    end
  end
end
