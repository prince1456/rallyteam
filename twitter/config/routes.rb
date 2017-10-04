Rails.application.routes.draw do
  get 'favtweets/index'
  resources :favtweets
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
