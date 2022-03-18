class ProductsController < ApplicationController

  def index
    @products = Product.all 
    render template: "products/index"
    # render json: products.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: id)
    # render json: product.as_json(methods: [:is_discounted?, :tax, :total])
    render template: "products/show"
  end

  def create
    @product = Product.new(
    name: params[:choice_name],
    price: params[:choice_price],
    image_url: params[:choice_image_url], 
    description: params[:choice_description])
    
    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
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
    @product = Product.find_by(id: params[:id])
    @product.name = params[:choice_name]
    @product.price = params[:choice_price]
    @product.image_url = params[:choice_image_url]
    @product.description = params[:choice_description]

    if @product.save
    render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    # products = Product.all  
    # render json: products.as_json
    render json: {message: "The product has been removed"}
  end
end
    