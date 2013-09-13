class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :store_id, null: false
      t.string :name, null: false
      t.integer :user_id, null: false
      t.string :image_url
      t.text :description
      t.integer :price, null: false, default: 0
      t.float :weight_oz

      t.timestamps
    end
  end
end
