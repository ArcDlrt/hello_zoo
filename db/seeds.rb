# Create breeds

breeds_collection = [
  { name: 'Fish' },
  { name: 'Arachnid' },
  { name: 'Bug' },
  { name: 'Serpent' },
  { name: 'Mammal' },
  { name: 'Feline' },
  { name: 'Canine' },
  { name: 'Crustacean' },
  { name: 'Fish' }
]

breeds = Breed.create breeds_collection

# Create zoos

image = open("#{Rails.root}/public/sample_zoo.jpg")
zoos_collection= [
  { name: 'LA Zoo', description: 'We have the animals', image: image },
  { name: 'Mexico City', description: 'Free tlacoyos for the children', image: image },
  { name: 'New Heaven', description: 'Come and see', image: image },
  { name: 'Guadalajara', description: 'Great view to the cliff', image: image },
  { name: 'Dubai', description: 'You lack money', image: image },
  { name: 'San Diego', description: 'The best', image: image }
]

zoos = Zoo.create zoos_collection

# Create zoo's animals

animals_collection = [
  { name: 'Lion', description: 'Wild animal', breed: breeds[0] },
  { name: 'Seal', description: 'Wild animal', breed: breeds[2] },
  { name: 'Duck', description: 'Wild animal', breed: breeds[5] },
  { name: 'Swan', description: 'Wild animal', breed: breeds[1] },
  { name: 'Elephant', description: 'Wild animal', breed: breeds[3] },
  { name: 'Giraffe', description: 'Wild animal', breed: breeds[2] },
  { name: 'Bear', description: 'Wild animal', breed: breeds[0] },
  { name: 'Ant', description: 'Wild animal', breed: breeds[4] },
  { name: 'Dragon', description: 'Wild animal', breed: breeds[0] }
]

zoos.each { |zoo|  zoo.animals.create animals_collection }