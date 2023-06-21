class CreateSecurities < ActiveRecord::Migration[5.0]
  def change
    create_table :securities do |t|
      t.string :memo

      t.timestamps
    end
  end
end
