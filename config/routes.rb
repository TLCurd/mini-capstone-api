Rails.application.routes.draw do
  
  get "/predator" => "products#predator"
  get "/all" =>"products#all"
  get "/mercurial" => "products#mercurial"
  get "/puma" => "products#puma"

  get "/query_param" => "products#any"
  get "/segment/:id" => "products#any"
end
   