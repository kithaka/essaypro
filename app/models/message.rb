class Message < ActiveRecord::Base
  attr_accessible :body, :order_id, :subject, :recipient, :sender
  belongs_to :order
end
