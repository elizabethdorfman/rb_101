SQMETERS_TO_SQFEET = 10.7639

print"Enter the length of the room in meters."
length=gets.chomp.to_i
print "Enter the width of the room in meters."
width=gets.chomp.to_i
square_meters=length*width.round(2)
square_feet=(square_meters/SQMETERS_TO_SQFEET).round(2)
print"The area of the room is #{square_meters} square meters and #{square_feet} square feet."
