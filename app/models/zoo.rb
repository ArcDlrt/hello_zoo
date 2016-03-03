class Zoo < ActiveRecord::Base

  has_many :animals, dependent: :destroy
  accepts_nested_attributes_for :animals, reject_if: :all_blank, allow_destroy: true

  validates :name, :description, presence: true

end
