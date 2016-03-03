class Animal < ActiveRecord::Base

  belongs_to :zoo
  belongs_to :species

  validates :name, :description, presence: true

end
