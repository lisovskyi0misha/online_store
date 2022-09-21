Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/landing_page', to: 'landing_page#new'
  post '/landing_page/create', to: 'landing_page#create', as: :create

  # Defines the root path route ("/")
  # root "articles#index"
end
