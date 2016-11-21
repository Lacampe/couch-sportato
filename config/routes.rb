Rails.application.routes.draw do

  devise_for :users

  authenticated :users do
    root 'events#index', as: :authenticated_root
  end

  root 'pages#home'

  resources :events

  mount Attachinary::Engine => "/attachinary"

end
