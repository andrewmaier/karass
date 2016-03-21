Rails.application.routes.draw do
  resources :topics
  resources :stakeholders

  root "pages#index"
  get "/settings/", to: "pages#settings"
  get "/results/", to: "pages#results"
end