Rails.application.routes.draw do

  get 'tags/index'

  root 'static#home'
  devise_for :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  get 'about', to: 'static#about'

  resources :posts

  resources :tags, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
