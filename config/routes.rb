Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin#dashboard'
  get 'socialwall', to: 'pages#socialwall'
  get 'socialwall-plateforme', to: 'pages#socialwall_plateforme'
  get 'socialwall-solution', to: 'pages#socialwall_solution'

  resources :logos
  resources :projects

end
