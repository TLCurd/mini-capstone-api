class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
   
  def index
    pp "current_user"
    pp current_user
    pp"/current_user"
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
    name: params[:name],
    price: params[:price],
    description: params[:description], supplier_id: params[:supplier_id])
    
    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.supplier_id = params[:supplier_id]

    if @product.save
    render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    render json: {message: "The product has been removed"}
  end
end
    