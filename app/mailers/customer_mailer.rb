class CustomerMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.password_reset.subject
  #
  def password_reset(customer)
    @customer=customer
    #@greeting = "Hi"
    mail :to => customer.email, :subject => "Password Reset"
    #mail to: "to@example.org"
  end
end
