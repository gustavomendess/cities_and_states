Rails.application.routes.draw do
  resources :filter_cities, only: [:index]
  root to: 'filter_cities#index'
end
