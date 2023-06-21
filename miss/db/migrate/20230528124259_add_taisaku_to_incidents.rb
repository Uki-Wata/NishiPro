class AddTaisakuToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :taisaku, :text
  end
end
