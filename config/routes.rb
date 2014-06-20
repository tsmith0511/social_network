Rails.application.routes.draw do
  root 'home#index'
  get  '/signup' => 'users#new'
  get  '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
  get '/users' => 'users#showall'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  post '/users/:id/edit' => 'users#update'
end
