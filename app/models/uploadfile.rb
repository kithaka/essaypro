class Uploadfile < ActiveRecord::Base
  attr_accessible :attachment, :name
  validates :name, :attachment, :presence=>"true"
  mount_uploader :attachment, AttachmentUploader 
  belongs_to :order
end
