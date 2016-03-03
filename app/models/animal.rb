class Animal < ActiveRecord::Base

  belongs_to :zoo
  belongs_to :breed

  validates :name, :description, :breed_id, presence: true

  scope :by_breed, -> { includes(:breed).order('breeds.name ASC') }

  def breed_name
    try(:breed).try(:name)
  end

end
