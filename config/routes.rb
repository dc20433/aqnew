Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
  end

  get "consent" => 'sites#consent'
  get "signup" => "users#new"
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"


  resources :users
  resources :sessions, except: [:edit, :update, :show, :new, :destroy]

root 'sites#home'

  # Defines the root path route ("/")
  # root "articles#index"
end
