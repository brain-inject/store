class CreateCartedNovelties < ActiveRecord::Migration
  def change
    create_table :carted_novelties do |t|
      t.integer :novelty_id
      t.integer :user_id
      t.integer :order_id
      t.integer :quantity
      t.string :status, default: "carted"

      t.timestamps null: false
    end
  end
end
