class Order < ActiveRecord::Base

  validates :status, inclusion: {in: %w(pending shipped returned canceled)}
  validates :payment_status, inclusion: {in: %w(unpaid paid refunded)}

  belongs_to :user

end
