def print_in_box (line_text)
	size = line_text.size
	horizontal_rule = "+ #{'-'*(size +2)}+"
	empty_line = "|#{' '*(size +2)} |"
	puts horizontal_rule
	puts empty_line
	puts "| #{line_text}  |"
	puts empty_line
	puts horizontal_rule
end

def print_in_box2 (line_text)
	space_size = line_text.size + 2
	spaces = " "*space_size
	dashes = "-"*space_size

	if space_size <75
	puts "+#{dashes}+"
	puts "|#{spaces}|"
	puts "| #{line_text} |"
	puts "|#{spaces}|"
	puts "+#{dashes}+"

	else 
		#put first 75 into a variable
		#put next 75 into a variable
	end
end

print_in_box2('')
print_in_box2('hello')