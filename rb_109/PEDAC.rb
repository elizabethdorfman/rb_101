
def determine_missing_letter (arr)
	arr_az= ['a','b','c', 'd', 'e','f','g','h','i','j','k','l','m','n','o','p','q','r' 's', 't', 'u', 'v', 'w', 'x', 'y','z']


	#Find the first element in alphabet
	if arr.empty?
		return '[]'
	else
		first =arr[0].downcase
		f_index=0
		loop do
			if f_index==25
				break
			elsif arr_az[f_index]==first
				break
			else
				f_index+=1
			end
		end
	end

#check for downcase or upcase
if arr[0]==arr_az[f_index]
	upcase=true
else
	upcase = false
end
#compare to alphabet and find skipped
output=''
for i in arr
	i =i.downcase
	if (i == arr_az[f_index])
		f_index+=1
	else
		output=arr_az[f_index]
		break
	end
end

if upcase
	output=output.upcase
end
return output
end
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
p determine_missing_letter(['a','b','c','d','f']) == 'E'