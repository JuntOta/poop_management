Rails.application.routes.draw do
  scope "(:locale)" do
   devise_for :users
   root to: "poops#index"
   resources :poops
   resources :posts do
     resources :comments, only: [:create, :destroy]
   end
   resources :users, only: :show
  end
end