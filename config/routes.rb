Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/home' => 'users#home'

  resources :locations, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
