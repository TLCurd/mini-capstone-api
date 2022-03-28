class Product < ApplicationRecord 
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :carted_product
  belongs_to :order

  belongs_to :supplier
  has_many :images

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}
  validates :description, presence: true
  validates :description, length: { in: 10..800}
  
  
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

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

end
