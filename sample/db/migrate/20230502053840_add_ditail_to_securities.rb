class AddDitailToSecurities < ActiveRecord::Migration[5.0]
  def change
    add_column :securities, :ditail, :text
  end
end
