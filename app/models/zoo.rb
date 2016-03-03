class Zoo < ActiveRecord::Base

  has_many :animals

  validates :name, :description, presence: true

end
