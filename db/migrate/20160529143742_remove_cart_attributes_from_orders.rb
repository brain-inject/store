class RemoveCartAttributesFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :novelty_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
