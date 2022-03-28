class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: true 

  def better_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def better_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
