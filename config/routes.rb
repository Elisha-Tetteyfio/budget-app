Rails.application.routes.draw do
  # get "splash_screen/index"
  root "splash_screen#index"
  devise_for :users
  resources :groups do
    resources :entities
  end
  resources :users
  # root "groups#index"
  get '/users', to: 'groups#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
