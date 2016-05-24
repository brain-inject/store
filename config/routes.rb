Rails.application.routes.draw do
  devise_for :users
  root to: 'novelties#index'
  get '/novelties' => 'novelties#index'
  get '/novelties/random' => 'novelties#random'
  get '/novelties/new' => 'novelties#new'
  post '/novelties' => 'novelties#create'

  get '/novelties/:id' => 'novelties#show'
  
  get '/novelties/:id/edit' => 'novelties#edit'
  patch '/novelties/:id' => 'novelties#update'
  delete '/novelties/:id' => 'novelties#delete'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end
