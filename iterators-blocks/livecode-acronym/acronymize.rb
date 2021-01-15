def acronymize(sentence)
	sentence
		.split
		.map { |word| word[0] }
		.join
		.upcase 
end 

#split sentece into single words
#isolate first letter 
#push letter into new array
#create array
#change array into string and upcase it