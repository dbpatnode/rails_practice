Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # CRUD breakdown:
  # :index - shows all articles (GET)
  # :show - shows individual articles(GET)
  # :new and create - allows for creation of new content (:new - GET, :create - POST)
  resources :articles, only: [:show, :index, :new, :create]
end
