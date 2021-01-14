students = ['Thomas', 'Frans', 'Ricardo']

# each - useless to assign to a variable!
puts "*** EACH"
students.each do |student|
	puts student.upcase
end

puts

# each with index - useless to assign to a variable!
puts "*** EACH WITH INDEX"
students.each_with_index do |student, index|
	puts "#{index + 1} - #{student}"
end

puts

# map
mapped_students = students.map do |student|
	# tranform element and save it in new array
	student.upcase
end

puts "*** MAP"
p students # original array is unchanged
p mapped_students # new array has transformed elements
puts

# select
long_named_students = students.select do |student|
	# last line must return a boolean
	student.length > 5
end

puts "*** SELECT"
p long_named_students
puts

# count
long_named_students = students.count do |student|
	# last line must return a boolean
	student.length > 5
end

puts "*** COUNT"
p long_named_students