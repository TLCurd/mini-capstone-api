class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @cartedproducts = CartedProduct.where(user_id: current_user.id, status: "carted")
      render template: "cartedproducts/index"
    else
      render json: {message: "#{@cartedproducts.errors.full_messages}"}
    end

  end


  def create
    carted = CartedProduct.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: "carted", order_id: nil)
    if carted.save
      render json: carted.as_json
    else
      render json: carted.errors.full_messages
    end
  end

  def destroy
    p carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy
    render json: {message: "This product has been removed from your cart."}
  end
end


