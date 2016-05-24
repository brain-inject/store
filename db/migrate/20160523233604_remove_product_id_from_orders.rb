class RemoveProductIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :product_id, :integer
    add_column :orders, :novelty_id, :integer
  end
end
