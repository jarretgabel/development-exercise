Rails.application.routes.draw do

  resources :posts, only: [:show, :update]

  root 'application#index'

end
