def palindrome?(string)
	string == string.reverse
end

def palindrome2?(array)
	array == array.reverse
end

def palindrome3?(arg)
	if arg.kind_of?(Array)
		arg == arg.reverse
	else
		arg == arg.reverse
	end
end

def real_palindrome?(string)
	string=string.downcase.delete('^a-z0-9')
	palindrome?(string)
end

def palindromic_number?(num)
	num=num.to_s
	palindrome?(num)
end

p palindromic_number?(34543)
p palindromic_number?(123210) == false
