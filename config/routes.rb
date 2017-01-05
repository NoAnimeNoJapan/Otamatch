Rails.application.routes.draw do
  get '/top' => 'home#top'

  get '/events' => 'event#index'
  get '/events' => 'event#new'

  get '/comment' => 'comment#index'

  devise_for :users
  resources :circles do
  	resources :events, only: [:create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
