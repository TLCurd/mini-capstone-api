class AddsProductIdAndQuantityToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :product_id, :integer
    add_column :orders, :quantity, :integer
  end
end
