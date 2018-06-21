Rails.application.routes.draw do
  #root to: 'tasks#index'
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  get 'tasks/:id/edit', to: 'tasks#edit'

  #resources :tasks, only: [:create, :destroy]
  resources :tasks
end
