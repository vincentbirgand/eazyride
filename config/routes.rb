Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :journeys do
      resources :drivees, only: :new
      resources :messages, only: [:new, :create]
      resources :reviews, only: [:new, :create]
    end
    resources :profiles, only: [:show, :update]
    resources :past_journeys, only: :index
end
