Rails.application.routes.draw do
  post "/login", to: 'users#login'
  get "/current_user", to: 'users#get_current_user'
  resources :users
  resources :targets, except: [:index]
end
