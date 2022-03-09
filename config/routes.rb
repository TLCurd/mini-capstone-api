Rails.application.routes.draw do
  
  get "/predator" => "products#predator"
  get "/all" =>"products#all"
end
  