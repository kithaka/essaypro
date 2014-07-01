
class Customer < ActiveRecord::Base
  attr_accessible :contact, :country, :email, :firstname, :password, :password_confirmation, :lastname
  has_secure_password
  has_many :orders, :dependent=>:destroy
  #dependent: :destory arranges for removal of all microposts of destroyed users
  before_save {|customer| customer.email=email.downcase}
  before_save :create_remember_token

  validates :firstname, :lastname, :presence=>true, :length=>{:maximum=>50} #old syntax of hash
  validates :password, :password_confirmation, :presence=>true, :length=>{:minimum=>6}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, :presence=>true, :format=>{:with=>VALID_EMAIL_REGEX }, 
   uniqueness: {case_sensitive: false}

   def feed
    Micropost.where("user_id=?", id)
    #the question mark ensures the scpae of id before injection into SQL to prevent security breach
  end
  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end
  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
    #you could have use a more explict approach by writing self.relationships.create!
     #.create! raises an excpetion when there is failure, using .create woun't raise an exception
  end
  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end
   private
   def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
   end
end