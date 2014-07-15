class State < ActiveRecord::Base
  attr_accessible :complete, :revision
  #validates :complete, :revision, :uniqueness=>true
  belongs_to :order
end
