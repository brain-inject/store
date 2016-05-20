class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
