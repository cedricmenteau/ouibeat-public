Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin/logos#index'
  get 'socialwall', to: 'pages#socialwall'
  get 'socialwall-plateforme', to: 'pages#socialwall_plateforme'
  get 'socialwall-solution', to: 'pages#socialwall_solution'
  get 'borne-connectee', to: 'pages#borne_connectee'
  get 'conception-digitale', to: 'pages#conception_digitale'
  get 'contact', to: 'pages#contact'
  get 'projects-index-filter', to: 'projects#index_filter'
  get 'certification', to: 'pages#certification'
  get 'jobs', to: 'pages#jobs'
  get 'policy', to: 'pages#policy'

  namespace :admin do
    resources :logos, :jobs
    resources :details, only: [:edit, :update, :destroy]
    resources :projects do
      resources :details, only: [:index, :new, :create]
    end
    get 'logos-move-lower', to: 'logos#move_lower'
    get 'logos-move-higher', to: 'logos#move_higher'
    get 'details-move-lower', to: 'details#move_lower'
    get 'details-move-higher', to: 'details#move_higher'
  end

  resources :logos, only: [:index]

  resources :projects, only: [:show]

end
