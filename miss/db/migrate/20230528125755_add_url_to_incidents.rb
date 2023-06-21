class AddUrlToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :url, :text
  end
end
