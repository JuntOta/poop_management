Rails.application.routes.draw do
  devise_for :users
  root to: "poops#index"
  resources :poops, only: :index
end
