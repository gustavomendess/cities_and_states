Rails.application.routes.draw do
  resources :cities, only: [:index]
  root to: 'cities#index'
end
