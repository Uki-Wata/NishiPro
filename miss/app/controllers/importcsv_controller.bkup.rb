class ImportcsvController < ApplicationController
require 'csv'

  def new
  end

  def create_big 
    file = params[:file]
    CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
      model_instance = Big.new
      model_instance.id = row['id']
      model_instance.memo = row['memo']
      model_instance.save!
    end
    redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  end
  
  def delete_and_reset_big
    Big.delete_all
    ActiveRecord::Base.connection.reset_sequence!('bigs', 'id')
    redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  end
  
  def create_middle 
    file = params[:file]
    CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
      model_instance = Middle.new
      model_instance.id = row['id']
      model_instance.big_id = row['big_id']
      model_instance.memo = row['memo']
      model_instance.save!
    end
    redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  end
  
  def delete_and_reset_middle
    Middle.delete_all
    ActiveRecord::Base.connection.reset_sequence!('middles', 'id')
    redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  end

    
  def create_small
    file = params[:file]
    CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
      model_instance = Small.new
      model_instance.id = row['id']
      model_instance.middle_id = row['middle_id']
      model_instance.memo = row['memo']
      model_instance.save!
    end
    redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  end
  
  def delete_and_reset_small
    Small.delete_all
    ActiveRecord::Base.connection.reset_sequence!('smalls', 'id')
    redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  end
  
  # def create_gyomu
  #   file = params[:file]
  #   CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
  #     model_instance = Gyomu.new
  #     model_instance.id = row['id']
  #     model_instance.small_id = row['small_id']
  #     model_instance.memo = row['memo']
  #     model_instance.save!
  #   end
  #   redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  # end
  
  # def delete_and_reset_gyomu
  #   Gyomu.delete_all
  #   ActiveRecord::Base.connection.reset_sequence!('gyomus', 'id')
  #   redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  # end
  
  def create_small_security
    file = params[:file]
    CSV.foreach(file.path, headers: true) do |row|
      model_instance = SmallSecurity.new
      model_instance.id = row['id']
      model_instance.small_id = row['small_id']
      model_instance.security_id = row['security_id']
      model_instance.save!
    end
    redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  end
  
  def delete_and_reset_small_security
    SmallSecurity.delete_all
    ActiveRecord::Base.connection.reset_sequence!('small_securitys', 'id')
    redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  end
  
    def create_security
    file = params[:file]
    CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
      model_instance = Security.new
      model_instance.id = row['id']
      model_instance.memo = row['memo']
      model_instance.ditail = row['ditail']
      model_instance.save!
    end
    redirect_to importcsv_new_path, notice: 'CSVをインポートしました。'
  end
  
  def delete_and_reset_security
    Security.delete_all
    ActiveRecord::Base.connection.reset_sequence!('securitys', 'id')
    redirect_to importcsv_new_path, notice: 'レコードを全削除し、IDをリセットしました。'
  end
  
#   def create_big 
#     file = params[:file]
#     CSV.foreach(file.path, headers: true) do |row|
#       model_instance = Big.new
#       model_instance.memo = row['attribute1']
#       model_instance.save!
#     end
#     redirect_to new_admin_import_csv_path, notice: 'CSVをインポートしました。'
#   end
end
