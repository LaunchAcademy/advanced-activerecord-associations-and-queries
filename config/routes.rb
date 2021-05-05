Rails.application.routes.draw do
  root "projects#index"

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :gifs
    end
  end
end
