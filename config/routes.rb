Rails.application.routes.draw do
  devise_for :users

  get '/dashboard', to: 'users#dashboard', as: :user_root

  resources :formations do
    resources :formation_users, path: :users, module: :formations
  end
  resources :lessons
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
