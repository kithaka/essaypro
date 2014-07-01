class PaymentNotification < ActiveRecord::Base
  attr_accessible :order_id, :params, :status, :transaction_id
  belongs_to :order
  serialize :params
  after_create :mark_order_as_purchased

  private
  def mark_order_as_purchased
  	if status=="Completed"
  		order.update_attribute(:purchased_at, Time.now)
  	end
  end
end
