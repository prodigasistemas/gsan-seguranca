Rails.application.routes.draw do
  root to: 'home#index'

  resource :session, only: [:new, :create, :destroy]

  constraints host: %w(localhost cosanpa.pa.gov.br) do
    resource :authorization, only: :show
  end
end
