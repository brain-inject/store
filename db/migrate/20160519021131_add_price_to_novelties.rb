class AddPriceToNovelties < ActiveRecord::Migration
  def change
    add_column :novelties, :price, :integer
  end
end
