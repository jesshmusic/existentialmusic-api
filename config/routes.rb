Rails.application.routes.draw do
  root to: "dev_home#show"

  resource :dev_about, only: [:show, :update]
  resource :dev_home, only: [:show, :update]
  resource :dev_resume, only: [:show, :update]

  resources :dev_projects
  resources :posts
  resources :videos
  resources :episodes
  resources :users
  resources :clients
  resources :technologies
  resources :positions
end
