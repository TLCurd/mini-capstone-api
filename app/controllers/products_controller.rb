class ProductsController < ApplicationController

  def index
    products = Product.all 
    render json: products.as_json(methods: [:is_discounted?, :tax])
  end

  def show
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product.as_json(methods: [:is_discounted?, :tax])
  end

  def create
    # id = params[:id]
    # name = params [:name]
    # price = params[:price]
    # image_url = params[:image_url]
    # description = params [:description]
  ## HARD CODE VERSION ##
    # product = Product.new(
    #   id: 4, 
    #   name: "adidas F50 Ghosted Adizero FG", 
    #   price: 249.99, 
    #   image_url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=370&h=370&cmp=100&c=999&img=A1057171000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", 
    #   description: "The Legends Return. Part of the limited edition adidas Legends Pack, this F50 Ghosted Adizero is inspired by legends of speed. Throughout the beautiful game's glittering history, the ability to shift gracefully through the gears has elevated greats into icons.")

  ## USER choice VERSION ##
    product = Product.new(
      id: params[:choice_id], 
      name: params[:choice_name],
      price: params[:choice_price],
      image_url: params[:choice_image_url], 
      description: params[:choice_description])

    product.save
    render json: product.as_json
  end

  def update
  ## USING .update ##
    # id = params[:id]
    # product = Product.find_by(id: id)
    # OR you can do: 
    # product = Product.find_by(id: params[:id])
    # product.update(
    #   name: params[:choice_name],
    #   price: params[:choice_price],
    #   image_url: params[:choice_image_url],
    #   description: params[:choice_description])
  ## USING individual values ##
    product = Product.find_by(id: params[:id])
    product.name = params[:choice_name]
    product.price = params[:choice_price]
    product.image_url = params[:choice_image_url]
    product.description = params[:choice_description]

    product.save

    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    # products = Product.all  
    # render json: products.as_json
    render json: {message: "The product has been removed"}
  end
end
    