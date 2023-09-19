print "What is your age?"
age = gets.chomp.to_i
print "At what age would you like to retire?"
retire_age=gets.chomp.to_i

current_year= Time.now.year
years_left= retire_age-age
retire_year = current_year + years_left

print "It's 2023. You will retire in #{retire_year}."
print "You have only #{years_left} years of work to go."