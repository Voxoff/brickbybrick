Rails.application.routes.draw do
  resources :users do
    collection do
      post 'login'
      get 'target'
      get 'current_user'
    end
  end
  resources :targets, except: [:index]
  # get "/current_user", to: 'users#get_current_user'
  # post "/login", to: 'users#login'
  # get "/current_user_target", to: 'users#target'
end
