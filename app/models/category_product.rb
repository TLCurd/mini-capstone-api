class CategoryProduct < ApplicationRecord
  belongs_to :category
  belongs_to :product
  
  def better_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def better_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

end
 