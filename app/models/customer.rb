
class Customer < ActiveRecord::Base
  attr_accessible :contact, :country, :email, :firstname, :password, :password_confirmation, :lastname
  has_secure_password
  has_many :orders, :dependent=>:destroy
  has_many :articles
  #dependent: :destory arranges for removal of all microposts of destroyed users
  before_save {|customer| customer.email=email.downcase}
  before_save :create_remember_token

  validates :firstname, :lastname, :presence=>true, :length=>{:maximum=>50} #old syntax of hash
  validates :password, :password_confirmation, :presence=>true, :length=>{:minimum=>6}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, :presence=>true, :format=>{:with=>VALID_EMAIL_REGEX }, 
   uniqueness: {case_sensitive: false}
   def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!(:validate => false)
    CustomerMailer.password_reset(self).deliver
  end
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Customer.exists?(column => self[column])
  end
  

   private
   def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
   end
end