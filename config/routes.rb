Rails.application.routes.draw do
  devise_for :users

  root 'groups#index'

  resources :groups, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:index, :new, :create]
  end

  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
end
