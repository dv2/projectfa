Futureandhra::Application.routes.draw do
  root to: 'homes#index'
  resources :surveys, only: [:new, :create]
end
