class SessionsController < ApplicationController

def new
end
def create
	customer=Customer.find_by_email(params[:session][:email])
		if customer && customer.authenticate(params[:session][:password])
			sign_in customer
			flash.now[:success]="Successfully logged in"
			redirect_back_or customer
		else
			redirect_to root_path, :notice =>"Invalid email/password combination"


		end
end
def destroy
	sign_out
	redirect_to root_path	
end
end

