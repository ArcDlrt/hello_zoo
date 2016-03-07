class Breed < ActiveRecord::Base
  has_many :animals
  has_many :zoos, through: :animals

  validates :name, presence: true
end
