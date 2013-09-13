class Product < ActiveRecord::Base

  validates :store_id, :user_id, :name, :price, presence: true
  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  belongs_to :store
  belongs_to :seller, foreign_key: :user_id, class_name: User
end
