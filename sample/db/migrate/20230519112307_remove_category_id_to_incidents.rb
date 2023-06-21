class RemoveCategoryIdToIncidents < ActiveRecord::Migration[5.0]
  def change
    remove_column :incidents, :category_id, :integer
  end
end
