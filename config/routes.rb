Rails.application.routes.draw do
  root to: 'static#home'
  get 'static/home'
end
