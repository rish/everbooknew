Rails.application.routes.draw do
  devise_for :users
  
  get 'tags/:tag', to: 'pins#index', as: :tag
  resources :pins

  resources :family_bonds, only: [:index, :new, :create, :destroy]
  root "pins#index"

end
