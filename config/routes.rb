Futureandhra::Application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :surveys, only: [:new, :create]
end
