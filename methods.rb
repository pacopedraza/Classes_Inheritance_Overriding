@balance = 100

def add_to_balance(amount)
	@balance += amount
end

def substract_from_balance(amount)
	@balance -= amount
end


def print_balance
	puts "print_balance: Balance is $#{@balance}."
end

def get_balance
	"$" + @balance.to_s
	@balance
end

def add_multiple_to_balance(*amounts)
	sum = 0
	amounts.each do |a|
		@balance += a
		sum += a
	end
	puts "Just added $#{sum} to balance."
end


add_to_balance(40)
print_balance
substract_from_balance(100)
print_balance
puts get_balance
add_multiple_to_balance(10,20,30)
puts print_balance
puts add_to_balance

