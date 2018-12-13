Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :journeys do

      resources :drivees, only: [:new, :create, :show]
      resources :messages, only: [:new, :create]
      resources :reviews, only: [:new, :create, :show]
    end
    resources :profiles, only: [:show, :edit, :update]
    resources :past_journeys, only: :index
    resources :reviews, only: :index
    resources :drivees, only: :index
end
