class Place < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :address, presence: true

  belongs_to :category
  belongs_to :type
end
