Rails.application.routes.draw do
  devise_for :users

  authenticate :user, lambda { |u| u.role == "admin" } do
    namespace :admin do

      resources :users
      root "dashboard#index"
    end
  end

  namespace :users do
    get 'account/show'
    root 'dashboard#show'
  end

  root to: 'static#home'
end
