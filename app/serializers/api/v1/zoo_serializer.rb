class Api::V1::ZooSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :animals
end
