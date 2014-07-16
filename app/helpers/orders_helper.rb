module OrdersHelper
	def calculator(order)
		if order.level=="High School"
			if order.urgency=="8 hours"
				price=28
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="12 hours"
				price=25
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="24 hours"
				price=22
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="48 hours"
				price=19
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="3 days"
				price=16
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="5 days"
				price=13
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="7 days"
				price=10
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="10 days"
				price=7
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="15 days"
				price=7
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="25 days"
				price=7
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Undergraduate"
			if order.urgency=="8 hours"
				price=35
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="12 hours"
				price=32
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="24 hours"
				price=29
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="48 hours"
				price=26
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="3 days"
				price=23
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="5 days"
				price=20
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="7 days"
				price=17
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="10 days"
				price=14
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="15 days"
				price=14
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="25 days"
				price=14
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Master"
			if order.urgency=="8 hours"
				price=42
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="12 hours"
				price=39
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="24 hours"
				price=36
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="48 hours"
				price=33
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="3 days"
				price=30
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="5 days"
				price=27
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="7 days"
				price=24
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="10 days"
				price=21
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="15 days"
				price=21
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="25 days"
				price=21
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Ph.D."
			if order.urgency=="8 hours"
				price=49
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="12 hours"
				price=46
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="24 hours"
				price=43
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="48 hours"
				price=40
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="3 days"
				price=37
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="5 days"
				price=34
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="7 days"
				price=31
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="10 days"
				price=28
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="15 days"
				price=28
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency=="25 days"
				price=28
				if order.spacing=="single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
	end
end
