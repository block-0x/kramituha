Rails.application.routes.draw do
  resources :videos
  root to: 'videos#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  namespace :api do
    resources :books, only: [:show]
  end
end
