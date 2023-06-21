class CreateMiddles < ActiveRecord::Migration[5.0]
  def change
    create_table :middles do |t|
      t.string :memo
      t.references :big, foreign_key: true

      t.timestamps
    end
  end
end
