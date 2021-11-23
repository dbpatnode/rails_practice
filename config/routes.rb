Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # :index - shows all articles
  # :show - shows individual articles
  resources :articles, only: [:show, :index]
end
