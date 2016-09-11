Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'pages#home'

  get 'admin', to: 'admin#dashboard'
  get 'socialwall', to: 'pages#socialwall'
  get 'socialwall-plateforme', to: 'pages#socialwall_plateforme'
  get 'socialwall-solution', to: 'pages#socialwall_solution'
  get 'borne-connectee', to: 'pages#borne_connectee'
  get 'conception-digitale', to: 'pages#conception_digitale'
  get 'contact', to: 'pages#contact'
  get 'projects-index-filter', to: 'projects#index_filter'
  get 'certification', to: 'pages#certification'
  get 'jobs', to: 'pages#jobs'

  resources :logos

  resources :projects do
    resources :details
  end

end
