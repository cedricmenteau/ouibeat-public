Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

end
