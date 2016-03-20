Rails.application.routes.draw do
  resources :topics

  root "pages#index"
  get "/settings/", to: "pages#settings"
end