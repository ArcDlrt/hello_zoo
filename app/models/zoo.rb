class Zoo < ActiveRecord::Base

  has_many :animals, dependent: :destroy
  has_many :breeds, through: :animals

  accepts_nested_attributes_for :animals, reject_if: :all_blank, allow_destroy: true

  validates :name, :description, presence: true

  mount_uploader :image, ImageUploader

  def breeds_quantity
    breeds.count
  end

end
