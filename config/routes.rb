Rails.application.routes.draw do
  # get "splash_screen/index"
  root "splash_screen#index"
  get "splash_screen/menu"
  devise_for :users
  resources :groups do
    resources :entities
  end
  # root "groups#index"
  get '/users', to: 'groups#index'
  get '/users/:id', to: 'groups#index'
  resources :users

end
