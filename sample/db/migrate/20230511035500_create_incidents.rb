## 追加部分
class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.date :date
      t.string :summary
      t.string :cause
      t.string :effect
      
      t.timestamps
    end
  end
end
