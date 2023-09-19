
arr=[]
print "Enter the 1st number:"
arr <<gets.chomp.to_i
print "Enter the 2nd number:"
arr <<gets.chomp.to_i
print "Enter the 3rd number:"
arr <<gets.chomp.to_i
print "Enter the 4th number:"
arr <<gets.chomp.to_i
print "Enter the 5th number:"
arr <<gets.chomp.to_i
print "Enter the 6th number:"
num6=gets.chomp.to_i

if arr.include?(num6)
	print"The number #{num6} appears in #{arr}"
else
	print"The number #{num6} does not appear in #{arr}"
end