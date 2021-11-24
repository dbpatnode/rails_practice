Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # CRUD/RESTful routes breakdown:
  # :index - shows all articles (GET)
  # :show - shows individual articles(GET)
  # :new and create - allows for creation of new content (:new - GET, :create - POST)
  # :edit and update - changing/updating existing thing.
  # :destroy - deleteing

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
      # is the same as :
  resources :articles
end
