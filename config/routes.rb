Rails.application.routes.draw do
  resources :masters
  namespace :api do
    namespace :v1 do
      get '/facilities_search', to: 'facilities#facilities_search'
      get '/facilities_filter', to: 'facilities#facilities_filter'
      resources :facilities
      resources :users
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
