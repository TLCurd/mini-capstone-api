class Product < ApplicationRecord
  def is_discounted?
    if price == nil
      false
    elsif price < 10
      true
    else 
      false
    end    
  end

  def tax
    if price == nil
      tax = 0
    else
      tax = price * 0.09
    end
    # p tax
  end

  def total
    if price == nil || tax == nil
      nil
    else
      total = price + tax
    end
  end

  def better_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def better_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
