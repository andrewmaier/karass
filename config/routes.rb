Rails.application.routes.draw do
  root "pages#index"
  get "/settings/", to: "pages#settings"
end