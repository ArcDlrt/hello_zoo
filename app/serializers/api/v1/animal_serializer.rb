class Api::V1::AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :breed
end