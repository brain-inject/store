class AddImageIdToNovelties < ActiveRecord::Migration
  def change
    add_column :novelties, :image_id, :integer
    remove_column :novelties, :image, :string
  end
end
