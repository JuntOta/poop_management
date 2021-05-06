Rails.application.routes.draw do
  root to: "poops#index"
  resources :poops, only: :index
end
