Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :location, only: (:index)
      resources :recipes, only: [:index, :create]
      resources :images, only: (:create)
      resources :users, only: [:create, :show]
    end
  end

  post '/presigned_url', to: 'direct_upload#create'
end
