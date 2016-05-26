class CreateCategorizedNovelties < ActiveRecord::Migration
  def change
    create_table :categorized_novelties do |t|
      t.integer :novelty_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
