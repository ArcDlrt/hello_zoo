class Animal < ActiveRecord::Base

  belongs_to :zoo
  belongs_to :breed

  validates :name, :description, :breed_id, presence: true

end
