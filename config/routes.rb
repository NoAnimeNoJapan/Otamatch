Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  root 'home#top'

  resources :boards do
  	resources :comments, only: [:create, :destroy]
  end

  devise_for :users
  resources :circles

  resources :events

  resources :users, only: [:index, :show] do
    get :circle_joins, on: :member
  end

  resources :circles do
    resource :circle_joins, only: [:create, :destroy]
  end
  root 'circles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :users, only: [:index, :show] do
    get :event_joins, on: :member
  end

  resources :events do
    resource :event_joins, only: [:create, :destroy]
  end

  root 'events#index'

end
