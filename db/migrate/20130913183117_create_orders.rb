class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :status, null: false, default: 'pending'
      t.string :payment_status, null: false, default: 'unpaid'

      t.timestamps
    end
  end
end
