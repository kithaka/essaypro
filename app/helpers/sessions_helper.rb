module SessionsHelper
	def sign_in(customer)
		cookies.permanent[:remember_token]=customer.remember_token
		current_user=customer
	end
	def signed_in?
		!current_user.nil?
	end
	def current_user=(customer)
		@current_user=customer
	end
	def current_user
		@current_user ||= Customer.find_by_remember_token(cookies[:remember_token])
	end
	def current_user?(customer)
		customer==current_user
	end
	def signed_in_user
		unless signed_in?
			store_location
			redirect_to signup_path, :notice=>"Please signup."
		end
	end
	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end
	def store_location
		session[:return_to]=request.fullpath
	end
	def sign_out
		current_user=nil
		cookies.delete(:remember_token)
	end
	def admin
    current_user.admin
  end
end
