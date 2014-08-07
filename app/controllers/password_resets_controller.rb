class PasswordResetsController < ApplicationController
	def new
	end
	def create
		customer = Customer.find_by_email(params[:email])
		customer.send_password_reset if customer
		redirect_to root_url, :notice => "Email sent with password reset instructions."
	end
	def edit
		@customer = Customer.find_by_password_reset_token!(params[:id])
	end
	def update
		@customer = Customer.find_by_password_reset_token!(params[:id])
		if @customer.password_reset_sent_at < 2.hours.ago
			redirect_to new_password_reset_path, :alert => "Password &crarr; reset has expired."
		elsif @customer.update_attributes(params[:customer])
			redirect_to root_url, :notice => "Password has been reset."
		else
			render :edit
		end
	end

end
