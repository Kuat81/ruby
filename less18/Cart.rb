class Cart
	attr_reader :a_cart, :cart_new, :cart

	def initialize
		@cart = 0
		@a_cart = ['6+', '7+', '8+', '9+', '10+', 'V+', 'D+', 'K+', 'A+',
				   '6^', '7^', '8^', '9^', '10^', 'V^', 'D^', 'K^', 'A^',
				   '6&', '7&', '8&', '9&', '10&', 'V&', 'D&', 'K&', 'A&',
		 		   '6%', '7%', '8%', '9%', '10%', 'V%', 'D%', 'K%', 'A%']
		@cart_new = @a_cart
	end

	def take_cart
		@cart = @cart_new.shuffle.first
		@cart_new.delete(@cart)
		#cart_new = @cart.collect![rand(arr.count)]
	end

end