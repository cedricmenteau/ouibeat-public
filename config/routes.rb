Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin#dashboard'
  get 'socialwall-welcome', to: 'pages#socialwall_welcome'

  resources :logos
  resources :projects

end
