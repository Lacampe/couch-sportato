Rails.application.routes.draw do

  devise_for :users
  root to: 'events#index'
  mount Attachinary::Engine => "/attachinary"

  resources :events

end
