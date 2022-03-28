class CartedProductsController < ApplicationController
  
  def create
    carted = CartedProduct.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: params[:status], order_id: params[:order_id])
    if carted.save
      render json: carted.as_json
    else
      render json: carted.errors.full_messages
    end
  end

end


