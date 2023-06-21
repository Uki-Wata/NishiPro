class SearchController < ApplicationController
def index
    @gyomu = Gyomu.joins(:smalls).where(smalls: { id: params[:small_id] }).first
end    

# def search
# @gyomu = Gyomu.joins(:smalls).where("smalls.id = ?", params[:small_id])
# end    
    
end
