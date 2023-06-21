class CreateBigs < ActiveRecord::Migration[5.0]
  def change
    create_table :bigs do |t|
      t.string :memo

      t.timestamps
    end
  end
end
