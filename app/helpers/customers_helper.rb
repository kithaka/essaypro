module CustomersHelper
	def administer
		@customer=Customer.where(:email=>"admin4writer@gmail.com")
		 if @customer.country=="$2a$10$zvNOVcM6PgDh7p./bVQG7eUet9qq43f3EnWSE0LZjx3IJyJ8gYjJG"
		 	@permission
		 end
	end
end
