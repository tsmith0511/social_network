Rails.application.routes.draw do
  get '/' => 'home#index'
  get  '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
end
