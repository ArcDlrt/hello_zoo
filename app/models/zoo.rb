class Zoo < ActiveRecord::Base

  validates :name, :description, presence: true

end
