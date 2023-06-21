class AddCategoryIdToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :category_id, :integer
  end
end
