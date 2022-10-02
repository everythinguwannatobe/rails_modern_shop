Rails.application.routes.draw do
  devise_for :users

  authenticate :user, lambda { |u| u.admin? } do
    namespace :admin do

      resources :users, only: [:index, :new, :create]
      root "dashboard#index"
    end
  end

  namespace :users do
    get 'account/show'
    root 'dashboard#show'
  end

  root to: 'static#home'
end
