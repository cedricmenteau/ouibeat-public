Rails.application.routes.draw do
  namespace :admin do
  get 'users/index'
  end

  namespace :admin do
  get 'dashboard/index'
  end

  devise_for :users
  root to: 'pages#home'

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :logos
  end

end
