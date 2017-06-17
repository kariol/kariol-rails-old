Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  ActiveAdmin.routes(self)

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount Attachinary::Engine => "/attachinary"

  scope '(:locale)', locale: /en/ do
    root to: 'pages#home'
    get '/legal', to: 'pages#legal'

    resources :users
  end
end
