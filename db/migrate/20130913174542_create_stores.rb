class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
