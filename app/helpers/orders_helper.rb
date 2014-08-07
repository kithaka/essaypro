module OrdersHelper
	def calculator(order)
		if order.level=="High School"
			if order.deadline==8
				price=28
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==12
				price=25
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==24
				price=22
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==48
				price=19
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==72
				price=16
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==120
				price=13
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==168
				price=10
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==240
				price=7
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==360
				price=7
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==600
				price=7
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Undergraduate"
			if order.deadline==8
				price=35
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==12
				price=32
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==24
				price=29
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==48
				price=26
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==72
				price=23
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==120
				price=20
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==168
				price=17
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==240
				price=14
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==360
				price=14
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==600
				price=14
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Master"
			if order.deadline==8
				price=42
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==12
				price=39
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==24
				price=36
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==48
				price=33
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==72
				price=30
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==120
				price=27
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==168
				price=24
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==240
				price=21
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==360
				price=21
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==600
				price=21
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
		if order.level=="Ph.D."
			if order.deadline==8
				price=49
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==12
				price=46
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==24
				price=43
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.urgency==48
				price=40
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==72
				price=37
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==120
				price=34
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==168
				price=31
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==240
				price=28
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==360
				price=28
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
			if order.deadline==600
				price=28
				if order.spacing=="Single"
				@total_price=(order.pages)*price*2
				else
				@total_price=(order.pages)*price
			end
			end
		end
	end
end
