students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

students.each_with_index do |student, index|
	age = student_ages[index]
	puts "#{student} is #{age} years old"
end

# this is hard to maintain ...