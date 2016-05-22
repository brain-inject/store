class AddSupplierIdToNovelties < ActiveRecord::Migration
  def change
    add_column :novelties, :supplier_id, :integer, default: 1
  end
end
