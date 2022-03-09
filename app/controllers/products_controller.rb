class ProductsController < ApplicationController
  def pred
    product = Product.first
    render json: product.as_json
  end
end
  