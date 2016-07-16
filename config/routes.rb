Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin#dashboard'

  resources :logos

end
