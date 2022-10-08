Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    namespace :products do
      resources :posters
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'landing_page#new'
  resources :landing_page, only: :create
  resources :catalog

  # Defines the root path route ("/")
  # root "articles#index"
end
