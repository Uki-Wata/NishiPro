Rails.application.routes.draw do
  get 'index_kno/index'
  get 'index_kno/result'

  root 'home#top'
  
  get 'index_inc/incidents'
  get 'index_inc/new'
  get 'index_inc/result'
  
  get 'home/top'
  
  get '/index', to: 'home#index'
  
  get '/search', to: 'home#search'
  # get '/searchsecond', to: 'home#searchsecond'
  
  get 'home/admin'
  
  get 'importcsv/new'
  post 'importcsv/create_big'
  
  post 'importcsv/create_middle'
  
  post 'importcsv/create_small'
  
  # post 'importcsv/create_gyomu'
  
  post 'importcsv/create_small_security'
  
  post 'importcsv/create_security'
  
  ## 追加部分
  post 'importcsv/create_incident_security'
  
  post 'importcsv/create_incident'
  
  ## 追加部分2
  post 'importcsv/create_category'
  
  ## 追加部分2
  post 'importcsv/create_sakuin'
  post 'importcsv/create_knowledge'
  
  ## 追加部分3
  post 'importcsv/create_incident_category'
  
  ## 追加部分3
  post 'importcsv/create_incident_knowledge'
  
  delete 'importcsv/delete_and_reset_big'
  delete 'importcsv/delete_and_reset_middle'
  delete 'importcsv/delete_and_reset_small'
  # delete 'importcsv/delete_and_reset_gyomu'
  delete 'importcsv/delete_and_reset_small_security'
  delete 'importcsv/delete_and_reset_security'
  
  ## 追加部分
  delete 'importcsv/delete_and_reset_incident_security'
  delete 'importcsv/delete_and_reset_incident'
  
  ## 追加部分2
  delete 'importcsv/delete_and_reset_category'
  
  ## 追加部分2
  delete 'importcsv/delete_and_reset_sakuin'
  delete 'importcsv/delete_and_reset_knowledge'
  
  ## 追加部分3
  delete 'importcsv/delete_and_reset_incident_category'
  
  ## 追加部分3
  delete 'importcsv/delete_and_reset_incident_knowledge'

  ## For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end