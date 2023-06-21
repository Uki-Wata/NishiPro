class IndexKnoController < ApplicationController
  def index
    ## DBからすべての「Sakuin」レコードを取得し、それと紐づく「knowledge」を取得
    @sakuins = Sakuin.all.includes(:knowledges)
  end

  def result
    # 「knowledge_ids」に指定されたIDに一致する「knowledges」レコードをDBから取得
    @knowledges = Knowledge.where(id: params[:knowledge_ids])
  end
end
