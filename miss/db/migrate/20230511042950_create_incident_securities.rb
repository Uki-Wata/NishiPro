## 追加部分
class CreateIncidentSecurities < ActiveRecord::Migration[5.0]
  def change
    create_table :incident_securities do |t|
      t.references :security, foreign_key: true
      t.references :incident, foreign_key: true
      
      t.timestamps
    end
  end
end
