Rails.application.routes.draw do

  resources :posts, only: [:show]

  root 'application#index'

end
