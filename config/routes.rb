Rails.application.routes.draw do
  devise_for :installs
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'pages#home'
  get 'pages/users'
  get 'pages/admin'
  post 'process_form', to: 'pages#process_form'
  resources :options, only: [:create]
  # get 'message', to: 'pages#message'

  # resources :checkbox_options, only: [:create, :update, :destroy]

  #post 'users/create' to: 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
