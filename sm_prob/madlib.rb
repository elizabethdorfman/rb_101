def madlib_game (noun, verb, adjective, adverb)
	sentence1= "Do you #{verb} your #{adjective} #{noun} #{adverb}?"
	sentence2= ""
	puts [sentence1, sentence2].sample
end

#Prompts
puts "Enter a noun:"
noun= gets.chomp
puts "Enter a verb:"
verb= gets.chomp
puts "Enter an adjective:"
adjective= gets.chomp
puts "Enter an adverb:"
adverb= gets.chomp

madlib_game(noun, verb, adjective, adverb)
