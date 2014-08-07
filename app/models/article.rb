class Article < ActiveRecord::Base
  attr_accessible :author, :body, :published_at, :title
  belongs_to :customer
  #default_scope :order=>'articles.created_at DESC'
  def self.latest
  	find :all, :limit => 10, :order => "articles.id desc"
  end
end
