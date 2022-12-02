Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
  end
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  
  get "consent" => 'sites#consent'
  get 'users/index' => 'users#index'
  get 'users/new' => 'users#new'
  get 'users/show' => 'users#show'
  get 'users/edit' => 'users#edit'
  
  resources :users
  resources :sessions, except: [:edit, :update, :show, :new, :destroy]

root 'sites#home'
end
