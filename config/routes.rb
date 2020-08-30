Rails.application.routes.draw do
  root to: 'videos#index'

  namespace :api do
    resources :books, only: [:show]
  end

   resources :videos do
    collection { post :import }
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

end
