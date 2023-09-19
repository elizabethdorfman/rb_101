def stringy(num)
	i = 1
	bin_string=''
	while i<=num
		if i.odd?
			bin_string << '1'
		else
			bin_string<<'0'
		end
		i+=1
	end
	bin_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'