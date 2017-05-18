Rails.application.routes.draw do

  #resources :posts, only: [:create, :index, :show] do
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :comments, only: [:show, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
