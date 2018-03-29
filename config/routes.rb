Rails.application.routes.draw do
  get '/' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/home' => 'users#home'
  get '/death' => 'users#death'
  post '/next' => 'locations#next'
  get '/victory' => 'users#victory'


  resources :locations, only: :show
  resources :edibles, only: [:update]
  resources :decisions, only: [:update]
  resources :creatures, only: :create
  resources :results, only: :index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
