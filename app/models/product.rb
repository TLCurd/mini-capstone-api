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
end
