Rails.application.routes.draw do
  root "cakes#index"
  resources :cakes
end
