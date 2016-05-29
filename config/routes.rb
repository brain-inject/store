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
  delete '/novelties/:id' => 'novelties#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/cart' => 'carted_novelties#index'
  post '/carted_novelties' => 'carted_novelties#create'
  delete '/carted_novelties/:id' => 'carted_novelties#destroy'
end
