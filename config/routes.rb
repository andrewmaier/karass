Rails.application.routes.draw do
  resources :topics
  resources :stakeholders
  resources :topic_associations
  
  post "/topic_associations/new", to: "topic_associations#new"

  root "pages#index"
  get "/settings/", to: "pages#settings"
  get "/results/", to: "pages#results"
end