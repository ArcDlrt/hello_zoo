class Animal < ActiveRecord::Base

  belongs_to :zoo

  validates :name, :description, presence: true

end
