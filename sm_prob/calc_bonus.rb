def calculate_bonus(bonus, boolean)
	#if true bonus is int/2
	#if false bonus is 0
	boolean? (salary/2): 0
	end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000