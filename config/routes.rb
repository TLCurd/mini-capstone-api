Rails.application.routes.draw do
  # ALL PRODUCTS
  get "/products" => "products#index"
  #Show one product
  get "/products/:id" => "products#show"
  # make a new product
  post "/products" => "products#create"
  # update a product
  patch "/products/:id" => "products#update"
  # destroy a product
  delete "/products/:id" => "products#destroy"


  # ALL suppliers
  get "/suppliers" => "suppliers#index"

  # user create
  post "/users" => "users#create"

  # sessions create
  post "/sessions" => "sessions#create"

  # order create
  post "/orders" => "orders#create"
  # order show
  get "/orders/:id" => "orders#show"
  # order index
  get "/orders" => "orders#index"

end
    