for i in 1..99
	if i.odd?
		puts i
	end
end

arr= 1.upto(99).select { |i| i.odd?}
puts arr