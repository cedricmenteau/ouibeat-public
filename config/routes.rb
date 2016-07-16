Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin#dashboard'

  resources :logos
  resources :projects

end
