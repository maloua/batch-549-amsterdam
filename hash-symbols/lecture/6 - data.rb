# CSV
require 'csv'

CSV.foreach("file.csv") do |row|
	"#{row[0]} has #{row[1]} inhabitants"
end

# JSON - from file
require 'json'

file = File.read('file.json')
paris = JSON.parse(file)

"#{paris["name"]} has #{paris["population"]} inhabitants"


# JSON - from API
require 'open-uri'

data = URI.open('https://api.github.com/users/thecoreymccue').read
corey = JSON.parse(data)
p corey['login']