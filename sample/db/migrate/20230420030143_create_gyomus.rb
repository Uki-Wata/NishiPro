class CreateGyomus < ActiveRecord::Migration[5.0]
  def change
    create_table :gyomus do |t|
      t.string :memo
      t.references :small, foreign_key: true

      t.timestamps
    end
  end
end
