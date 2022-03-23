class OrdersController < ApplicationController
  before_action :authenticate_user, only: [:view, :create]
  def index
    if current_user
      orders = Order.where(user_id: current_user.id)
      render json: orders.as_json
    else
      render json: {message: "You must be logged in to view your orders."}
    end
  end
  
  
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      tax = (product.price * params[:quantity].to_i) * 0.09
      total = (product.price * params[:quantity].to_i) + tax
      order = Order.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], subtotal: product.price * params[:quantity].to_i, tax: tax, total: total)
      # could also use the tax and total methods from product class:
      # order = Order.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], subtotal: product.price * params[:quantity], tax: product.tax * params[:quantity], total: product.total * params[:quantity])
      if order.save
        render json: order.as_json   
      else
        render json: { message: "This order was not created due to: #{order.errors.full_messages}."}
      end
    else
      render json: { message: "You must be logged in to dot that."}, status: :unauthorized 
    end    
  end

  def show
    order = Order.find_by(id: params[:id])
    if current_user == nil 
      render json: {message: "You must be logged in to view your order."}, status: :unauthorized
    elsif order.user_id == current_user.id
      render json: order.as_json  
    else
      render json: {message: "You must be logged in to view your order."}, status: :unauthorized
    end
  end
end
