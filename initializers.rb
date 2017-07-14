class Customer
	def initialize(customer_id, name, city)
		@customer_id = customer_id
                @name = name
		@city = city

	end
	
	def customer_id=(customer_id)
		@customer_id = customer_id
	end

	def customer_id
		@customer_id
	end

	attr_reader :city
	attr_writer :city

	attr_accessor :name

	attr_accessor :zipcode
end

c1 = Customer.new(10,"Cruzito","El gallo negro")
puts c1.name
puts c1.city

puts c1.city = "Seattle"

c2 = Customer.new(11, "Chuy Saavedra", "El Este de Califas")
c2.zipcode
