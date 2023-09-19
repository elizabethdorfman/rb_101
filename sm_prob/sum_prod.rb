print "Please enter an integer greater than 0:"
num=gets.chomp.to_i
print"Enter 's' to compute the sum, 'p' to compute the product."
op=gets.chomp

sum= 0
factorial= 1
for i in 1..num
	sum= i+sum
	factorial= i*factorial
end

if op == 's'
	print "The sum of the integers between 1 and #{num} is #{sum}."
elsif op == 'p'
	print "The product of the integers between 1 and #{num} is #{factorial}."
else
	print "Not a valid operation."
end
