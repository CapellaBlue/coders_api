Rails.application.routes.draw do

  resources :posts, only: [:create, :index, :show] do
    resources :comments, only: [:create, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
