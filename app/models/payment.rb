class Payment < ActiveRecord::Base
  attr_accessible :amount, :order_id, :quantity, :status
  belongs_to :order
end
