Rails.application.routes.draw do
  root 'home#top'
  
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
  
  


  
  
  delete 'importcsv/delete_and_reset_big'
  delete 'importcsv/delete_and_reset_middle'
  delete 'importcsv/delete_and_reset_small'
  # delete 'importcsv/delete_and_reset_gyomu'
  delete 'importcsv/delete_and_reset_small_security'
  delete 'importcsv/delete_and_reset_security'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end