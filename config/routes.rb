Rails.application.routes.draw do
  # get 'boards/new'

  # get 'boards/index'

  # get 'boards/show'

  # get 'boards/edit'

  root 'home#top'

  # get '/events' => 'event#index'
  # get '/events' => 'event#new'
  resources :events
  
  get '/comment' => 'comment#index'

  devise_for :users
  resources :circles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
