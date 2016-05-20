class RemovePriceInNovelties < ActiveRecord::Migration
  def change
    remove_column :novelties, :price, :string
  end
end
