Rails.application.routes.draw do
  root "projects#index"

  get "/gifs", to: "homes#index"

  resources :projects

  namespace :api do
    namespace :v1 do
      resources :gifs
    end
  end
end
