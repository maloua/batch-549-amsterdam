students = ['Sjors', 'Daan', 'Corey']

# CRUD
# Create
students.push('Fabrizio')
students << 'Monica'

# Read
students[1]

# Update
students[2] = 'Fabrizio'

# Delete 
# delete value on specific index
students.delete_at(2)

# delete all occurences
students.delete('Fabrizio')
