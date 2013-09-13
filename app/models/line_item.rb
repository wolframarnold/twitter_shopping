class LineItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :order

  validates :product_id, :order_id, presence: true
  validates :quantity, numericality: {greater_than_or_equal_to: 1, only_integer: true}

end
