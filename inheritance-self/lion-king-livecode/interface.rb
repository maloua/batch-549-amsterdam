require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'


simba = Lion.new('Simba', 'roars')
nala = Lion.new('Nala', 'roars')
timon = Meerkat.new('Timon', 'barks')
pumbaa = Warthog.new('Pumbaa', 'grunts')

lion_king_animals = [simba, nala, timon, pumbaa]

Animal.make_some_noise(lion_king_animals)

# lion_king_animals.each do |animal|
# 	p animal.talk
# end
