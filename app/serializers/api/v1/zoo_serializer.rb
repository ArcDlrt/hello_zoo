class Api::V1::ZooSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :animals
end
