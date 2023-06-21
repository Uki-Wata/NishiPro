class CreateSmalls < ActiveRecord::Migration[5.0]
  def change
    create_table :smalls do |t|
      t.string :memo
      t.references :middle, foreign_key: true

      t.timestamps
    end
  end
end
