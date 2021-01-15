# string syntax
# city_hash = {
# 	"population" => 800000
# }

# old symbol syntax
# city_hash = {
# 	:population => 800000	
# }

# new symbol syntax
city_hash = {
	population: 800000,
	country: "The Netherlands"
}

# CRUD  
# create
city_hash[:monument] = 'De Dam'

# read
city_hash[:population]

# update
city_hash[:monument] = 'Rijksmuseum'

# delete
city_hash.delete(:population)
