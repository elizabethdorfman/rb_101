#input loan amount, APR, duration
#output monthly interest rate, loan duratoin, monthly payment


#input details
puts "Please enter the loan amount:"
loan_amount= gets.chomp.to_i

puts "Please enter the loan duration in months"
loan_months=gets.chomp.to_i

puts "Please enter the monthly interest rate %"
monthly_interest_rate=gets.chomp.to_i

#calculate
p = loan_amount.to_f
n = loan_months.to_f
j = monthly_interest_rate/100.to_f


m = p * (j / (1 - (1 + j)**(-n)))

puts m
