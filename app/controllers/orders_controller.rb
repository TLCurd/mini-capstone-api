class OrdersController < ApplicationController
  def index
    if current_user
      orders = Order.where(user_id: current_user.id)
      render json: orders.as_json
    else
      render json: {message: "You must be logged in to view your orders."}
    end
  end
  
  
  def create
    product = Product.find_by(id: params[:product_id])
    tax = product.price * 0.08
    total = product.price + tax
    order = Order.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], subtotal: product.price, tax: tax, total: total)
    if order.save
      render json: order.as_json   
    else
      render json: { message: "This order was not created due to: #{order.errors.full_messages}."}
    end     
  end

  def show
    if current_user
      order = Order.find_by(id: params[:id])
      render json: order.as_json  
    else
      render json: {message: "You must be logged in to view your orders."}
    end
  end
end
