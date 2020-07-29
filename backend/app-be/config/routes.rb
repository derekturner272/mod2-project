Rails.application.routes.draw do
  resources :technologies
  resources :sports
  resources :sciences
  resources :healths
  resources :generals
  resources :entertainments
  resources :businesses
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
