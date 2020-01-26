Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "exercises#index"
  resources :routines
  resources :users
  resources :exercises do
    resources :exercise_logs, only: [:new, :index]
  end
  resources :exercise_logs
  
end
