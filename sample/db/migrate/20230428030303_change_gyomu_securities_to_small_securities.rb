class ChangeGyomuSecuritiesToSmallSecurities < ActiveRecord::Migration[5.0]
  def change
    rename_table :gyomu_securities, :small_securities
  end
end
