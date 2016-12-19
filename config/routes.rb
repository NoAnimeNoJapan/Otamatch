Rails.application.routes.draw do
  get '/top' => 'home#top'

  devise_for :users
  resources :circles do
  	resources :events, only: [:create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
