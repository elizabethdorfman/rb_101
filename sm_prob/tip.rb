print "What is the bill?"
bill=gets.chomp.to_f

print "What is the tip %?"
tip_rate = gets.chomp.to_f

tip=(bill*tip_rate/100).round(2)
total= (bill+tip).round(2)

print"The tip is $#{tip} and the total is $#{total}."