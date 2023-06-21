class HomeController < ApplicationController
  def index
    # DBからすべての「Big」レコードを取得し、それと紐づく「Middles」「Smalls」を取得
    @bigs = Big.all.includes(middles: :smalls)
  end
  
  def top
  end

  def search
    # 「small_ids」に指定されたIDに一致する「Smalls」レコードをDBから取得
    @smalls = Small.includes(:securities).where(id: params[:small_ids])
  end
  
  # def searchsecond
  #   @gyomu_memos = Gyomu.where(id: params[:gyomu_ids]).pluck(:memo)
  #   @securities = Security.includes(:gyomus).where(gyomus: { id: params[:gyomu_ids] })
  # end

  def admin
  end
end