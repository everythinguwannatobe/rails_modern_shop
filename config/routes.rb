Rails.application.routes.draw do
  devise_for :users

  authenticate :user, lambda { |u| u.admin? } do
    namespace :admin do

      root "dashboard#show"
    end
  end

  namespace :users do
    get 'account/show'
    root 'dashboard#show'
  end

  root to: 'static#home'
end
