Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/legal', to: 'pages#legal'
end
