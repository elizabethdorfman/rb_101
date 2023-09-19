
def prompt (message)
	Kernel.puts("=> #{message}")
end

def valid_number(num)
	num.to_i() != 0
end

def operation_to_msg (op)
	case op
	when '-'
		'subtracting'
	when '+'
		'adding'
	when '/'
		'dividing'
	when '*'
		'multiplying'
	end
end 

#welcome
prompt("Welcome to Calculator! Enter your name:")
name = ''
loop do
	name = Kernel.gets().chomp()
	if name.empty?()
		prompt("make sure to use valid name.")
	else
		break
	end
end

loop do #main loop
	num_1=''
	loop do
		prompt ("Please enter a number for calculation:")
		num_1=gets().chomp().to_i
		if valid_number(num_1)
			break
		else
			prompt ("That doesn't look valid.")
		end
	end

	num_2=''
	loop do
		prompt ("Please enter another number for calculation:")
		num_2=gets().chomp().to_i
		if valid_number(num_2)
			break
		else 
			prompt("That doesn't look valid.")
	end
end 

op_prompt = <<-MSG
"Please enter operation( + - / *):
Any of the above are valid.
MSG

prompt (op_prompt)
op =''
	loop do
		op=gets().chomp()
		if %w(+ - * /).include?(op)
			break
		else
			prompt("Must choose one of the operators.")
		end
	end

	prompt("#{operation_to_msg(op)} the two numbers...")

	result = case op
	when "+"
		num_3=num_1+num_2
	when '-'
		num_3=num_1-num_2
	when '*'
		num_3 = num_1*num_2
	when '/'
		num_3= num_1.to_f/num_2.to_f
	end

	prompt("The result is #{num_3}")
	prompt("Do you want to perform another calculation? (Y to caclc again)")
	answer = Kernel.gets().chomp()
	break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using this calculator.")