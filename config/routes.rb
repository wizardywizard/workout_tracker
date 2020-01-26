Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "exercises#index"
  resources :routines
  resources :users
  resources :exercises
  resources :exercise_logs
  # get '/signin', to: 'session#new'
  # post '/signin', to: 'session#create'
  # delete '/session', to: 'session#destroy'
end
