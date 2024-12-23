class Place < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  belongs_to :category
  belongs_to :type

  has_many :reviews, dependent: :destroy
end
