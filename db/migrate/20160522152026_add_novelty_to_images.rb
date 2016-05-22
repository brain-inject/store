class AddNoveltyToImages < ActiveRecord::Migration
  def change
    add_column :images, :novelty_id, :integer
    remove_column :novelties, :image_id, :integer
  end
end
