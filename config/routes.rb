Rails.application.routes.draw do

  root 'home#top'

  resources :boards do
  	resources :comments, only: [:create, :destroy]
  end

  get '/events' => 'event#index'
  get '/events' => 'event#new'


  devise_for :users
  resources :circles do
  	resources :events, only: [:create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
