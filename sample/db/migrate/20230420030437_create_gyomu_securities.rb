class CreateGyomuSecurities < ActiveRecord::Migration[5.0]
  def change
    create_table :gyomu_securities do |t|
      t.references :gyomu, foreign_key: true
      t.references :security, foreign_key: true

      t.timestamps
    end
  end
end
