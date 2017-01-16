Rails.application.routes.draw do
  root 'home#top'

  resources :boards do
  	resources :comments, only: [:create, :destroy]
  end

  devise_for :users
  resources :circles
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
