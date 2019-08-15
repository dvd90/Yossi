Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :mesimas, only: [:index, :show] do
    resources :accepteds, only: [:create, :update]
  end

  get "dashboard", to: "pages#dashboard"
  get "profile/:id", to: "pages#profile"
end
