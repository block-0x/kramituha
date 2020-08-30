Rails.application.routes.draw do
  # root to: 'videos#index'

  namespace :api do
    resources :books, only: [:show]
  end

   resources :videos do
    collection { post :import }
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # Book一覧取得用のパス
  get '/api/videos', to: 'api/videos#index'

  # Book一覧表示用のパス
  get '/videos', to: 'videos#index'

end
