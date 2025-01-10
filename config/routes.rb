Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get "about", to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get "up" => "rails/health#show", as: :rails_health_check
end
