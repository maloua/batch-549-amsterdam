# Create an empty hash
empty = {}

# Create a hash with values
amsterdam = {
	"population" => 800000,
	"country" => "The Netherlands"
}

# CRUD
# create
amsterdam["language"] = ['Dutch', 'English']

# read
amsterdam["population"]

# update
amsterdam["language"] = ['Dutch', 'English', 'German']

# delete
amsterdam.delete("population")

# ITERATION

amsterdam.each do |key, value|
	# p key
	# p value

	# if (value == 'The Netherlands')
	# 	amsterdam.delete(key)
	# end
end

# METHODS

p amsterdam.key?("country")
p amsterdam.key?("monument")

p amsterdam.keys
p amsterdam.values






















