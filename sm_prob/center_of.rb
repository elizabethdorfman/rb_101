def center_of(str)
	if str.length%2==1
		index = str.length/2
		p str[index]
	else
		index=str.length/2
		str[index-1..index]
	end
end
puts center_of('I love ruby')
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
