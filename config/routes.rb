Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #My info
  get "/mine", to: "mine#index"

  #Register
  root "login#index"
  get "/register", to: "reg#index"
  get "/register/new", to: "reg#new"
  post "/register/reg", to: "reg#reg"

  #login
  get "/login", to: "login#index"
  get "/login/login", to: "login#in"

  #dashboard
  get "/dashboard", to: "dashboard#index"

  #category
  get "/category", to: "catg#index"
  get "/category/new", to: "catg#new"
  post "/category/create", to: "catg#create"
  get "/category/:id/edit", to: "catg#edit"
  post "/category/:id/update", to: "catg#update"
  get "/category/:id/destroy", to: "catg#destroy"

  #book
  get "/book", to: "book#index"
  get "/book/new", to: "book#new"
  post "/book/create", to: "book#create"
  get "/book/:id/edit", to: "book#edit"
  post "/book/:id/update", to: "book#update"
  get "/book/:id/destroy", to: "book#destroy"

  #author
  get "/author", to: "author#index"
  get "/author/new", to: "author#new"
  post "/author/create", to: "author#create"
  get "/author/:id/edit", to: "author#edit"
  post "/author/:id/update", to: "author#update"
  get "/author/:id/destroy", to: "author#destroy"

  #publisher
  get "/publisher", to: "publisher#index"
  get "/publisher/new", to: "publisher#new"
  post "/publisher/create", to: "publisher#create"
  get "/publisher/:id/edit", to: "publisher#edit"
  post "/publisher/:id/update", to: "publisher#update"
  get "/publisher/:id/destroy", to: "publisher#destroy"

  #rack
  get "/rack", to: "rack#index"
  get "/rack/new", to: "rack#new"
  post "/rack/create", to: "rack#create"
  get "/rack/:id/edit", to: "rack#edit"
  post "/rack/:id/update", to: "rack#update"
  get "/rack/:id/destroy", to: "rack#destroy"

  #issue_books
  get "/issues", to: "issues#index"
  get "/issues/new", to: "issues#new"
  post "/issues/create", to: "issues#create"
  get "/issues/:id/edit", to: "issues#edit"
  post "/issues/:id/update", to: "issues#update"
  get "/issues/:id/destroy", to: "issues#destroy"

  #users
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  post "/users/create", to: "users#create"
  get "/users/:id/edit", to: "users#edit"
  post "/users/:id/update", to: "users#update"
  get "/users/:id/destroy", to: "users#destroy"

  #logout
  #
  # Administrator
  get "/admin", to: "admin#index"
  get "/admin/new", to: "admin#new"
  post "/admin/create", to: "admin#create"
  get "/admin/:id/edit", to: "admin#edit"
  post "/admin/:id/update", to: "admin#update"
  get "/admin/:id/destroy", to: "admin#destroy"
end
