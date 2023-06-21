class IndexIncController < ApplicationController
  def incidents
    # DBからすべての「Big」レコードを取得し、それと紐づく「Middles」「Smalls」を取得
    ## @bigs = Big.all.includes(middles: :smalls)
    ## DBからすべての「Category」レコードを取得し、それと紐づく「Incident」を取得
    @categories = Category.all.includes(:incidents)
    ## @categories = Category.all
  end
  
  def result
    # 「incident_ids」に指定されたIDに一致する「incidents」レコードをDBから取得
    @incidents = Incident.includes(:securities).where(id: params[:incident_ids])
    ##「security_ids」に指定されたIDに一致する「Securities」レコードをDBから取得
    ## @securities = Security.includes(:incidents)
  end
  
  def new
  end
  
end
