Rails.application.routes.draw do
  resources :decisions
  resources :results
  resources :edibles
  resources :locations
  resources :creatures
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
