Rails.application.routes.draw do
  
  get "/predator" => "products#predator"
  get "/all" =>"products#all"
  get "/mercurial" => "products#mercurial"
  get "/puma" => "products#puma"
end
  