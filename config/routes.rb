Rails.application.routes.draw do
  root to: 'home#index'

  resource :session, only: [:new, :create, :destroy]
  resource :authorization, only: :show
end
