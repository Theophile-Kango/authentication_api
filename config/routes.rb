Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'api/v1/users#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :tokens, only: [:create]
    end
  end
end
