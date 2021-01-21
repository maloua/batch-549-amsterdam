require_relative 'castle'
require_relative 'house'

house = House.new('Housy', 30, 6)
windsor = Castle.new('Windsor', 400, 500, 'Alfred')

puts windsor.name
puts windsor.floor_area
puts windsor.butler.castle.butler.clean_house
