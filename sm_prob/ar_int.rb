def prompt(message)
	puts "==> #{message}"
end

prompt("Enter the first number:")
num1= gets.chomp.to_i
prompt("Enter the second number:")
num2=gets.chomp.to_i

print"#{num1} + #{num2} = #{num1+num2}\n"
print"#{num1} - #{num2} = #{num1-num2}\n"
print"#{num1} * #{num2} = #{num1*num2}\n"
print"#{num1} / #{num2} = #{num1/num2}\n"
print"#{num1} % #{num2} = #{num1%num2}\n"
print"#{num1} ** #{num2} = #{num1**num2}\n"