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
    # if current_user
    #   products = CartedProduct.where(user_id: current_user.id, status: "carted")
    #   p products
    #   subtotal = 0
    #   tax = 0
    #   total = 0
    #   products.each do |product|
    #     prod = Product.find_by(id: product[:product_id])
    #     subtotal += prod.price 
    #     tax += prod.tax
    #   end
    #   total = subtotal + tax
    #   order = Order.new(user_id: current_user.id, subtotal: subtotal, tax: tax, total: total)
    #   if order.save
    #     products.each do |product|
    #       # prod = Product.find_by(id: product.product_id)
    #       prod[:status] = "purchased"
    #     end
    #     render json: order.as_json   
    #   else
    #     render json: { message: "This order was not created due to: #{order.errors.full_messages}."}
    #   end
    # else
    #   render json: { message: "You must be logged in to do that."}, status: :unauthorized 
    # end    

    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
      calculated_tax += carted_product.product.price * 0.09
    end
    total = calculated_subtotal + calculated_tax
    

    order = Order.new(user_id: current_user.id, subtotal: calculated_subtotal, tax: calculated_tax, total: total)
    order.save
    carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order_id = order.id 
      carted_product.save
    end
    render json: order.as_json
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
