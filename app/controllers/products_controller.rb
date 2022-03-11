class ProductsController < ApplicationController

  def index
    products = Product.all 
    render json: products.as_json
  end

  def show
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product.as_json
  end

  def create
    # id = params[:id]
    # name = params [:name]
    # price = params[:price]
    # image_url = params[:image_url]
    # description = params [:description]
    # HARD CODE VERSION
    # product = Product.new(
    #   id: 4, 
    #   name: "adidas F50 Ghosted Adizero FG", 
    #   price: 249.99, 
    #   image_url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=370&h=370&cmp=100&c=999&img=A1057171000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", 
    #   description: "The Legends Return. Part of the limited edition adidas Legends Pack, this F50 Ghosted Adizero is inspired by legends of speed. Throughout the beautiful game's glittering history, the ability to shift gracefully through the gears has elevated greats into icons.")

    # USER INPUT VERSION
    product = Product.new(
      id: params[:input_id], 
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url], 
      description: params[:input_description])

    product.save
    render json: product.as_json
  end

  def update
    # id = params[:id]
    # product = Product.find_by(id: id)
    # OR you can do: 
    product = Product.find_by(id: params[:id])
    product.update(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description])

      render json: product.as_json
  end
end
    