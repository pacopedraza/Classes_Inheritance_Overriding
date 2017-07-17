[1,2,3].each {|num| print "#{num}!"}
puts 

[1,2,3].each do |num| # implemented with do...end
	puts "#{num}!"
end

puts
puts "Array using yield"
class Array
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		select
	end
end

[1,2,3].my_each {|num| puts "#{num}!"}

puts "Array using blocks"

class Array
	def my_each
		i = 0
		while i < self.size
			puts "#{self[i]}!" 
			i += 1
		end
		select
	end
end

[1,2,3].my_each {|num| puts "#{num}!"}

values = ["short", "tall", "medium"]

puts result = values.sort {|left, right| left.length <=> right.length}
puts result = values.sort {|left, right| right.length <=> left.length}

puts "Numeric Sort"
numbers = [1, 100, 800, 200, 1200, 4]
puts numbers.sort {|x,y| y<=>x}
puts numbers.sort {|x,y| x<=>y}
