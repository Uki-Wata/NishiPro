class CreateSakuins < ActiveRecord::Migration[5.0]
  def change
    create_table :sakuins do |t|
      t.string :memo

      t.timestamps
    end
  end
end
