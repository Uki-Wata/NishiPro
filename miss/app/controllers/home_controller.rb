class HomeController < ApplicationController
protect_from_forgery with: :exception
http_basic_authenticate_with name: "sotupuro", password: "sotupuroPassw0rd!"

  def index
    # DBからすべての「Big」レコードを取得し、それと紐づく「Middles」「Smalls」を取得
    @bigs = Big.all.includes(middles: :smalls)
    ## DBからすべての「Category」レコードを取得し、それと紐づく「Incident」を取得
    ## @categories = Category.all.includes(:incident)
  end
  
  def top
  end

  def search
    # 「small_ids」に指定されたIDに一致する「Smalls」レコードをDBから取得
    @smalls = Small.includes(:securities).where(id: params[:small_ids])
    ##「security_ids」に指定されたIDに一致する「Securities」レコードをDBから取得
    @securities = Security.includes(:incidents)
  end
  
  # def searchsecond
  #   @gyomu_memos = Gyomu.where(id: params[:gyomu_ids]).pluck(:memo)
  #   @securities = Security.includes(:gyomus).where(gyomus: { id: params[:gyomu_ids] })
  # end

  def admin
  end
end