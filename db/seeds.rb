# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Breeds

breeds_arr = [
  { name: 'Fish' },
  { name: 'Arachnid' },
  { name: 'Bug' },
  { name: 'Serpent' },
  { name: 'Mammal' },
  { name: 'Feline' },
  { name: 'Canine' },
  { name: 'Crustacean' },
  { name: 'Fish' }]

if Breed.count <= 0
  breeds = Breed.create(breeds_arr)
else
  breeds = Breed.all
end

zoos_arr= [
  { name: 'LA Zoo', description: 'We have the animals', image: open('public/sample_zoo.jpg') },
  { name: 'Mexico City', description: 'Free tlacoyos for the children', image: open('public/sample_zoo.jpg')  },
  { name: 'New Heaven', description: 'Come and see', image: open('public/sample_zoo.jpg')  },
  { name: 'Guadalajara', description: 'Great view to the cliff', image: open('public/sample_zoo.jpg')  },
  { name: 'Dubai', description: 'You lack money', image: open('public/sample_zoo.jpg')  },
  { name: 'San Diego', description: 'The best', image: open('public/sample_zoo.jpg')  }
]

zoos = Zoo.create(zoos_arr)


animals_arr = %w(Lion Seal Duck Swan Elephant Giraffe Bear Ant Dragon)

r = Random.new
r_max = animals_arr.size - 1
r_max_breed = breeds.size - 1

zoos.each do |zoo|
  zoo_animals = (0..25).map do |i|
    { name: "#{animals_arr[r.rand(r_max)]}", description: 'Wild animal',  breed: breeds[r.rand(r_max_breed)]}
  end

  zoo.animals.create zoo_animals
end


