Rails.application.routes.draw do
  get '/' => 'novelties#index'
  get '/novelties' => 'novelties#index'
  get '/novelties/random' => 'novelties#random'
  get '/novelties/new' => 'novelties#new'
  post '/novelties' => 'novelties#create'

  get '/novelties/:id' => 'novelties#show'
  
  get '/novelties/:id/edit' => 'novelties#edit'
  patch '/novelties/:id' => 'novelties#update'
  delete '/novelties/:id' => 'novelties#delete'
end
