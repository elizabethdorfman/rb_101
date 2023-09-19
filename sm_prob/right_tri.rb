def triangle(n)
i_row = 1
n_rows= n
	n_rows.times do
		puts " "*(n_rows -i_row) + "*"*i_row
		i_row+=1
	end
end

#first prints n number stars
#second prints n-1 number of stars
def triangle2(n)
	i_row = 0
	n_rows= n
		n_rows.times do
			puts "*"*(n_rows-i_row) + " "*i_row 
			i_row+=1
		end
	end

triangle2(3)
triangle2(9)