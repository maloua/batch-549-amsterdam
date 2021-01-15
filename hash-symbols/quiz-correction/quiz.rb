# Q6
grades = [19, 8, 11, 15, 13]

sum = 0.0
grades.each { |grade| sum += grade }
sum / grades.length

# solutions without each
grades.sum.to_f / grades.length
grades.sum.fdiv(grades.length)

# Q7
def capitalize_name(first, last)
	"#{first.capitalize} #{last.capitalize}"
end

capitalize_name('malou', 'allertz')

# Q8
# interpolation
var = 'hello'
"#{var}" 

# concatenation
var + "!" 

# Q9
fruits = ["banana", "peach", "watermelon", "orange", "orange", "orange"]
# Print out "peach" from the fruits array in the terminal
fruits[1]

# Add an "apple" to the fruits array
fruits.push('apple') # fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange"
fruits.delete('orange')

# Q10
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"

# Update the population to 2000001
city[:population] = 2000001

# What will the following code return?
city[:mayor]

# Q11
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

result = students.map do |student|
	# student ==> ['paul', 21]
	{ name: student[0], age: student[1] }
end

p result



















































