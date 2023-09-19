#strategy one read in string backwards 
#
def reversed_number (num)
	num= num.to_s
	num_length=num.length
	i=1
	new_num=[]

	num_length.times do
		new_num<< num[num_length-i]
		i+=1
	end
	new_num.to_s
end

puts reversed_number(12345) 


#strategy two with number divisors

