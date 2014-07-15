module OrdersHelper
	def calculator(order)
		if order.level=="High School"
			if order.urgency=="8 hours"
				price=28
				@total_price=(order.pages)*price
			end
			if order.urgency=="12 hours"
				price=25
				@total_price=(order.pages)*price
			end
			if order.urgency=="24 hours"
				price=22
				@total_price=(order.pages)*price
			end
			if order.urgency=="48 hours"
				price=19
				@total_price=price*(order.pages)
			end
			if order.urgency=="3 days"
				price=16
				@total_price=price*(order.pages)
			end
			if order.urgency=="5 days"
				price=13
				@total_price=price*(order.pages)
			end
			if order.urgency=="7 days"
				price=10
				@total_price=price*(order.pages)
			end
			if order.urgency=="10 days"
				price=7
				@total_price=price*(order.pages)
			end
			if order.urgency=="15 days"
				price=7
				@total_price=price*(order.pages)
			end
			if order.urgency=="25 days"
				price=7
				@total_price=price*(order.pages)
			end
		end
		if order.level=="Undergraduate"
			if order.urgency=="8 hours"
				price=35
				@total_price=(order.pages)*price
			end
			if order.urgency=="12 hours"
				price=32
				@total_price=(order.pages)*price
			end
			if order.urgency=="24 hours"
				price=29
				@total_price=(order.pages)*price
			end
			if order.urgency=="48 hours"
				price=26
				@total_price=price*(order.pages)
			end
			if order.urgency=="3 days"
				price=23
				@total_price=price*(order.pages)
			end
			if order.urgency=="5 days"
				price=20
				@total_price=price*(order.pages)
			end
			if order.urgency=="7 days"
				price=17
				@total_price=price*(order.pages)
			end
			if order.urgency=="10 days"
				price=14
				@total_price=price*(order.pages)
			end
			if order.urgency=="15 days"
				price=14
				@total_price=price*(order.pages)
			end
			if order.urgency=="25 days"
				price=14
				@total_price=price*(order.pages)
			end
		end
		if order.level=="Master"
			if order.urgency=="8 hours"
				price=42
				@total_price=(order.pages)*price
			end
			if order.urgency=="12 hours"
				price=39
				@total_price=(order.pages)*price
			end
			if order.urgency=="24 hours"
				price=36
				@total_price=(order.pages)*pages
			end
			if order.urgency=="48 hours"
				price=33
				@total_price=price*(order.pages)
			end
			if order.urgency=="3 days"
				price=30
				@total_price=price*(order.pages)
			end
			if order.urgency=="5 days"
				price=27
				@total_price=price*(order.pages)
			end
			if order.urgency=="7 days"
				price=24
				@total_price=price*(order.pages)
			end
			if order.urgency=="10 days"
				price=21
				@total_price=price*(order.pages)
			end
			if order.urgency=="15 days"
				price=21
				@total_price=price*(order.pages)
			end
			if order.urgency=="25 days"
				price=21
				@total_price=price*(order.pages)
			end
		end
		if order.level=="Ph.D."
			if order.urgency=="8 hours"
				price=49
				@total_price=(order.pages)*price
			end
			if order.urgency=="12 hours"
				price=46
				@total_price=(order.pages)*price
			end
			if order.urgency=="24 hours"
				price=43
				@total_price=(order.pages)*pages
			end
			if order.urgency=="48 hours"
				price=40
				@total_price=price*(order.pages)
			end
			if order.urgency=="3 days"
				price=37
				@total_price=price*(order.pages)
			end
			if order.urgency=="5 days"
				price=34
				@total_price=price*(order.pages)
			end
			if order.urgency=="7 days"
				price=31
				@total_price=price*(order.pages)
			end
			if order.urgency=="10 days"
				price=28
				@total_price=price*(order.pages)
			end
			if order.urgency=="15 days"
				price=28
				@total_price=price*(order.pages)
			end
			if order.urgency=="25 days"
				price=28
				@total_price=price*(order.pages)
			end
		end
	end
end
