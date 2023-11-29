Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :groups, only: [:index, :new, :create] do
    resources :purchases, only: [:index, :new, :create]
  end

  resources :purchases, only: [:index, :new, :create]

end
