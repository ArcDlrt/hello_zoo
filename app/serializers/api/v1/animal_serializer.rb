class Api::V1::AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_one :breed
end