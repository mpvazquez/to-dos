ToDos::Application.routes.draw do
  root "tasks#index"
  resources :tasks, only: [:create, :update, :destroy]
end
