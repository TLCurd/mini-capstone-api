class ProductsController < ApplicationController
  def predator
    product = Product.first
    # render json: {message: "Here is the predator."}
    render json: product.as_json
  end

  def mercurial
    product = Product.second.as_json
    render json: product
  end

  def puma
    product = Product.third.as_json
    render json: product
  end

  def all
    product = Product.all.as_json
    render json: product
  end

  def any
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product
  end
end
   