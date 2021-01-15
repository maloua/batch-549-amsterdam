# CRUD on arrays & hashes

students_array = ["Peter", "John", "Mary"]

city_hash = {
	"population" => 800000,
	"country" => "The Netherlands"
}

# CRUD
# create
city_hash["language"] = ['Dutch', 'English']

students_array.push('Corey')
students_array << 'Thomas'

# read
city_hash["population"]

students_array[2]

# update
city_hash["language"] = ['Dutch', 'English', 'German']

students_array[1] = "Fabrizio"

# delete
city_hash.delete("population")

students_array.delete("peter")
students_array.delete_at(0)
