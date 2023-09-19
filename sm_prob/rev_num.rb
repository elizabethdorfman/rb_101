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
	new_num.join().to_i
end

puts reversed_number(12345) 
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654


#strategy two with string reverrse
def reversed_number2(num)
	num = num.to_s
	reverse= num.reverse
	reverse.to_i
end

