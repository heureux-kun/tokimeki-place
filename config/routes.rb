Rails.application.routes.draw do
  #match ':controller(/:action(/:id))' , via: [ :get, :post, :patch ]
  resources :places
  root 'places#index'
  
end