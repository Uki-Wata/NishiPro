class RenameGyomuIdColumnToSmallSecurities < ActiveRecord::Migration[5.0]
  def change
    rename_column :small_securities, :gyomu_id, :small_id
  end
end
