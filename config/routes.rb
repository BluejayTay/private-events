Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :events do
    resources :confirmations, only: [:new, :create, :destroy]
  end


  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
