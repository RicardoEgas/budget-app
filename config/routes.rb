Rails.application.routes.draw do
  devise_for :users

  root 'groups#index'

  resources :groups, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:new, :create]
  end

end