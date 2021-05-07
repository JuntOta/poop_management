Rails.application.routes.draw do
  devise_for :users
  root to: "poops#index"
  resources :poops, only: [:index, :create, :edit]
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
