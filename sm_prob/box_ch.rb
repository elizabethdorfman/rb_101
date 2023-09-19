def print_in_box (line_text)
	length=line_text.length()
	i1=0
	print_lines=[]
	loop do
		if length <=75
			print_lines << line_text
			break
		else
			print_lines <<line_text[i1..i1+75]
			i1+=76
			if i1>=length
				break
			end
		end
	end 

#testing this
#print


if print_lines.length == 1
	puts '+' + '-'*(length+2) + '+'
	puts "|" +" "*(length+2) + "|"
	puts "| #{print_lines[0]} |"
	puts "|" +" "*(length+2) + "|"
	puts '+' + '-'*(length+2) + '+'
else 
	#for each item in array print
	puts'+' + '-'*75 + '+'
 	puts "|" +" "*75 + "|"
	print_lines.each { |str| puts "| #{str} |"} 
	puts "|" +" "*75 + "|"
	puts'+' + '-'*75 + '+'
end
end
print_in_box("hello my name is elder smith i like to drinki poke bowls and go to the beach and i write a lot like loads you don't even know.")

