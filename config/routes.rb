Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  ActiveAdmin.routes(self)
  
  mount Attachinary::Engine => "/attachinary"

  scope '(:locale)', locale: /en/ do
    root to: 'pages#home'
    get '/legal', to: 'pages#legal'

    resources :users
  end
end
