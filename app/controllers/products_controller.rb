class ProductsController < ApplicationController
  def predator
    product = Product.first
    # render json: {message: "Here is the predator."}
    render json: product.as_json
  end

  def all
    product = Product.all.as_json
    render json: product
  end
end
  