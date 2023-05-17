require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'upload_transaction_file#index'

  resources :upload_transaction_file, only: [:index, :create]
  
  mount Sidekiq::Web => "/sidekiq"
end
