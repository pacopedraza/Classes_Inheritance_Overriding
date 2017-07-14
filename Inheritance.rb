class Vehicle
	def initialize(make)
		@make = make
	end

	attr_accessor :make #to expose @make

	def accelerate
		puts "Moving faster."
	end

	def brake
		puts "Slowing down."
	end

	def start
		puts "The engine is now running."
	end

	def to_s
		"Make is #{@make}"
	end

end

class Car < Vehicle
	def initialize (make)
		super(make) # Overriding
	end

	def open_door
		puts "The door is open."
	end
	
	def close_door
		puts "The door is closed."
	end
end

class Motorcycle < Vehicle
	def initialize (make, model)
		super(make) # Overriding
		@model = model	
	end

	def engage_clutch
		puts "Clutch engaged."
	end

	def to_S
		"Make is #{@make} and model is #{@model}"
	end

end

#c = Car.new
c = Car.new("Mustang")
puts c.open_door
puts c.accelerate
puts c.make # Overriding
puts c.to_s # Overriding

puts "Start Motorcycle"
m = Motorcycle.new("Susuky","M123")
puts m.accelerate
puts m.engage_clutch
puts m.make
puts m.to_s
